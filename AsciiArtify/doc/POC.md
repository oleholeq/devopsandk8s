#### ARGOCD POC
1. Install k3d:
   ```bash
   wget -q -O - https://raw.githubusercontent.com/k3d-io/k3d/main/install.sh | bash
    ```
2. Create local cluster for ArgoCD:
```bash
k3d cluster create argo
```
3. Create namespace and use official manifest:
```bash
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
```
4. Check podes and nodes status:
```bash
k get all -n argocd
k get pod -n argocd -w
```
5. Enable port-forwarding for argocd:
```bash
kubectl port-forward svc/argocd-server -n argocd 8080:443&
[1] 23820
Forwarding from 127.0.0.1:8080 -> 8080
Forwarding from [::1]:8080 -> 8080
Handling connection for 8080
```
6. Get admin password for UI:
```bash
k -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}"
k -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}"|base64 -d;echo
```

URL:
- [ARGOCD start](https://argo-cd.readthedocs.io/en/stable/)