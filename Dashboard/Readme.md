| Step                         | Command                                                                                        | Description                        |
|------------------------------|-----------------------------------------------------------------|----------------------------------|
| Deploy Dashboard             | `kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.7.0/aio/deploy/recommended.yaml` | Deploys the Kubernetes Dashboard  |
| Verify Pods                  | `kubectl get pods -n kubernetes-dashboard`                                                   | Checks if Dashboard pods are running |
| Create Admin ServiceAccount and ClusterRoleBinding    | `./admin-user.sh` | Grants admin privileges to admin-user |
| Get Bearer Token             | `token=$(kubectl -n kubernetes-dashboard create token admin-user)`                           | Retrieves login token              |
| Show Token                   | `echo $token`                                                                                | Displays login token for Dashboard |
| Start Proxy                  | `kubectl proxy`                                                                              | Starts proxy to access Dashboard UI |
| Access Dashboard             | [http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/](http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/) | Opens Dashboard in browser        |
