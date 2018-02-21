kube b/g switch example
=======================

0. `minikube start`

1. `kubectl apply -f kube/kube-registry.yaml`

2. docker port magic: `./setup.sh`

3. `./docker/build.sh`

4. `kubectl apply -f kube/one.yml`

5. `kubectl apply -f kube/blue.yml`

6. `addr=$(minikube service switch --url)`

7. `curl $addr`

8. `kubectl apply -f kube/two.yml`

9. `kubectl apply -f kube/green.yml`
