#### GITLEAKS ####
Steps:
# 1. Install gitleaks locally
```bash
git clone https://github.com/gitleaks/gitleaks.git
make build
sudo cp gitleaks /usr/local/bin
cd kbot
gitleaks detect --source . --log-opts="--all"


    ○
    │╲
    │ ○
    ○ ░
    ░    gitleaks

7:08PM INF 55 commits scanned.
7:08PM INF scanned ~120436 bytes (120.44 KB) in 234ms
7:08PM INF no leaks found
```
# 2. Let's add some secrets for test
```bash
Finding:     tokenKey: REDACTED
Secret:      REDACTED
RuleID:      gcp-api-key
Entropy:     4.804508
File:        helm/values.yaml
Line:        17
Fingerprint: helm/values.yaml:gcp-api-key:17

Finding:     ...E_TOKEN
  tokenKey: REDACTED
Secret:      REDACTED
RuleID:      gcp-api-key
Entropy:     4.804508
File:        helm/secrets.yaml
Line:        4
Fingerprint: helm/secrets.yaml:gcp-api-key:4

7:30PM INF 1 commits scanned.
7:30PM INF scan completed in 61ms
7:30PM WRN leaks found: 2
```
# 3. Install pre-commit 
```bash
brew install pre-commit

pre-commit --version
pre-commit 4.2.0

create .pre-commit-config.yaml
add some base template:

repos:
  - repo: https://github.com/gitleaks/gitleaks
    rev: v8.16.1
    hooks:
      - id: gitleaks

pre-commit run --all-files
Detect hardcoded secrets.................................................Passed
```
4. Githook
Create folder .githook and file gitleaks_hook.py
insert code to it
after it you should change you pre-commit-config
```bash
 repos:
  - repo: local
    hooks:
      - id: gitleaks-detect
        name: Gitleaks Scan
        entry: python3 .githooks/gitleaks_hook.py
        language: system
        types: [file]
```
then you enable it:
```bash
git config gitleaks.enable true
```
and then test it:
```bash
git add .                      
git commit -m 'test'           
Gitleaks Scan............................................................Passed
```
