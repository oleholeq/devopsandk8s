#!/usr/bin/env python3

import subprocess
import platform
import shutil
import os
import sys
import tempfile
import requests
import tarfile
from pathlib import Path


def is_gitleaks_enabled():
    try:
        result = subprocess.run(
            ["git", "config", "--bool", "--get", "gitleaks.enable"],
            capture_output=True,
            text=True,
            check=True,
        )
        return result.stdout.strip().lower() == "true"
    except subprocess.CalledProcessError:
        return False


def gitleaks_installed():
    return shutil.which("gitleaks") is not None


def install_gitleaks():
    system = platform.system()
    print(f"[gitleaks] Installing for {system}...")

    if system == "Darwin":
        if shutil.which("brew"):
            subprocess.check_call(["brew", "install", "gitleaks"])
        else:
            print("[gitleaks] Homebrew not found. Please install manually.")
            sys.exit(1)

    elif system == "Linux":
        url = None
        print("[gitleaks] Fetching latest release info from GitHub...")
        resp = requests.get("https://api.github.com/repos/gitleaks/gitleaks/releases/latest")
        if resp.status_code != 200:
            print("[gitleaks] Failed to fetch latest release info.")
            sys.exit(1)

        data = resp.json()
        for asset in data.get("assets", []):
            name = asset.get("name", "")
            if "linux" in name.lower() and name.endswith(".tar.gz") and "amd64" in name.lower():
                url = asset["browser_download_url"]
                break

        if not url:
            print("[gitleaks] Suitable release not found.")
            sys.exit(1)

        print(f"[gitleaks] Downloading from {url}...")
        with tempfile.TemporaryDirectory() as tmpdir:
            tar_path = os.path.join(tmpdir, "gitleaks.tar.gz")
            with requests.get(url, stream=True) as r:
                r.raise_for_status()
                with open(tar_path, "wb") as f:
                    for chunk in r.iter_content(chunk_size=8192):
                        f.write(chunk)

            with tarfile.open(tar_path) as tar:
                tar.extractall(tmpdir)

            gitleaks_bin = os.path.join(tmpdir, "gitleaks")
            if not os.path.isfile(gitleaks_bin):
                # Try to locate gitleaks binary in tar
                for root, _, files in os.walk(tmpdir):
                    if "gitleaks" in files:
                        gitleaks_bin = os.path.join(root, "gitleaks")
                        break

            target_path = "/usr/local/bin/gitleaks"
            print(f"[gitleaks] Installing to {target_path}...")
            subprocess.check_call(["sudo", "mv", gitleaks_bin, target_path])
            subprocess.check_call(["sudo", "chmod", "+x", target_path])

    else:
        print(f"[gitleaks] Unsupported OS: {system}")
        sys.exit(1)


def run_gitleaks():
    print("[gitleaks] Running scan...")
    try:
        subprocess.check_call(["gitleaks", "detect", "--source", ".", "--redact"])
        print("[gitleaks] No secrets found.")
    except subprocess.CalledProcessError as e:
        print("[gitleaks] Secrets detected! Commit aborted.")
        sys.exit(e.returncode)


def main():
    if not is_gitleaks_enabled():
        print("[gitleaks] Skipped (enable with: git config gitleaks.enable true)")
        return

    if not gitleaks_installed():
        install_gitleaks()

    run_gitleaks()


if __name__ == "__main__":
    main()