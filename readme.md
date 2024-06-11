0.Updated the provider.tf content with correct one 
1. kubeconfig.yaml is created and copied the content of config file of local minikube cluster 
2. Used that kubeconfig.yaml in provided ,keeping path of it 
3. removed config_context = "my-context" fro provider 
4. changed the path to module directory and did terraform init , terraform validate and terraform plan 

Did terraform terraform init , terraform validate and terraform plan of 
1. pods 
2. deployment
3. Services
4. CongifMaps
5. CronsJobs
6. DaemonSets
7. DeploymentConfig
8. HorizontalPodAutoscalers 
9. Ingresses/Istio
10. Ingresses/Nginx
11. PresistentVolumeClaims
12. PodDisruptionBudgets
13. ReplicaSets
14. ReplicationControllers
15. RoleBindings
16. Secrets
17. ServiceAccounts
18. StorageClasses
19. NetworkPolicies


Error in :

2. Routes
3. VolumeSnapshotClasses
4. VoluneSnapshot
