### HOW TO
1. Скопіюйте скрипт у директорію scripts/ та переназвіть скріпт на kubectl-kubeplugin:
```bash
mv kubeplugin /script/kubectl-kubeplugin
```
2. Зробіть цей скріпт виконуваним:
```bash
chmod +x kubectl-kubeplugin
```

Або ж помістіть його у $PATH, наприклад:
```bash
mv kubectl-kubeplugin /usr/local/bin/
```
3. Використання:
```bash
kubectl kubeplugin kube-system pod
kubectl kubeplugin default nodes
```
Аутпути:
```bash
kubectl kubeplugin default nodes
nodes, default, k3d-argo-server-0, 359m, 3%
```

```bash
kubectl kubeplugin kube-system pod
pod, kube-system, coredns-ccb96694c-68sdh, 6m, 16Mi
pod, kube-system, local-path-provisioner-5cf85fd84d-kldpz, 1m, 8Mi
pod, kube-system, metrics-server-5985cbc9d7-gng2w, 10m, 23Mi
pod, kube-system, svclb-traefik-9e3604fd-7fhc2, 0m, 0Mi
pod, kube-system, traefik-5d45fc8cc9-m5k27, 2m, 31Mi
```