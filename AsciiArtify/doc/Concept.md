# Concept: Порівняння інструментів для локального розгортання Kubernetes кластерів
## Вступ 
У цьому документі порівнюються три популярні інструменти для локального розгортання Kubernetes кластерів:

**Minikube** — інструмент, який створює локальний Kubernetes кластер на віртуальній машині або у Docker-контейнері.

**Kind  (Kubernetes in Docker)** — дозволяє створювати Kubernetes кластери за допомогою Docker контейнерів як нод.

**k3d** — обгортка для запуску k3s (легковагового Kubernetes від Rancher) у Docker-контейнерах.

Ці інструменти дозволяють швидко створювати Kubernetes кластери для локального тестування, CI/CD та PoC.


#### Характеристики
| Характеристика                  | Minikube                         | Kind                        | K3d                         |
| ------------------------------- | ------------------------------   | --------------------------- | --------------------------- |
| Підтримувані ОС                 | Windows, macOS, Linux            | Windows, macOS, Linux       | Windows, macOS, Linux       |
| Архітектура                     | x86\_64, ARM (обмежено)          | x86\_64, ARM                | x86\_64, ARM                |
| Потреба в Docker                | Опційно (може використовувати VM)| Обов'язково                 | Обов'язково                 |
| Альтернатива Docker             | Podman (експериментально)        | Частково, з Podman          | Частково, з Podman          |
| Автоматизація                   | Так (CLI, API)                   | Так (CLI, YAML конфіг)      | Так (CLI, YAML конфіг)      |
| Інтеграція з kubectl            | Так                              | Так                         | Так                         |
| Моніторинг/панелі               | Add-ons                          | Ні                          | Ні                          |
| Контролює всі компоненти        | Так                              | Так                         | Так (через k3s)             |

#### Переваги та недоліки

**Minikube**

Переваги:

- Працює без Docker (через VM)
- Вбудовані аддони (дешево додати dashboard, metrics-server тощо)
- Велика спільнота

Недоліки:
- Більше використання ресурсів (через VM)
- Повільніше стартує порівняно з kind/k3d

**Kind**

Переваги:
- Дуже легкий та швидкий
- Добре підходить для CI (GitHub Actions etc)
- Простий YAML конфіг для кластеру

Недоліки:
- Docker потрібен обов'язково
- Немає вбудованих аддонів

**k3d**

Переваги:
- k3s споживає менше ресурсів
- Підтримка високої доступності (HA)
- Швидке розгортання lightweight кластеру

Недоліки:
- K3s має відмінності від повноцінного Kubernetes
- Docker також є вимогою (Podman не завжди працює стабільно)

## Демонстрація: k3d + Hello World

Рекомендований інструмент для стартапу AsciiArtify: k3d, оскільки він легкий, швидкий і має low-resource overhead.

Кроки:
  ```bash
# 1. Встановити k3d
brew install k3d  # або curl https://raw.githubusercontent.com/k3d-io/k3d/main/install.sh | bash

# 2. Створити кластер
k3d cluster create asciiartify

# 3. Розгорнути Hello World
kubectl create deployment hello --image=nginx
kubectl expose deployment hello --type=LoadBalancer --port=80

# 4. Отримати порт
k3d cluster list
# 5.Порт-форвардинг
kubectl port-forward service/hello 8080:80
# 6. Періврка
curl http://localhost:8080
```
Demonstration:
![Demo](../demo/demo.gif)

### Джерела:
1. [Minikube start](https://kubernetes.io/uk/docs/tasks/tools/install-minikube/)
2. [Kind start](https://kind.sigs.k8s.io/)
3. [k3d start](https://k3d.io/v5.2.1/)
4. [Minikube vs kind vs k3d](https://www.devzero.io/blog/minikube-vs-kind-vs-k3s)
5. [Minikube vs kind vs k3d](https://www.blueshoe.io/blog/minikube-vs-k3d-vs-kind-vs-getdeck-beiboot/)
6. [Podman vs Docker](https://www.imaginarycloud.com/blog/podman-vs-docker)
