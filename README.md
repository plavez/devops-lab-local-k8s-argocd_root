# Module to deploy ArgoCD ROOT Applicaiton to to kind-K8S -  Docker Desktop

Example to use:

```
module "argocd_root" {
  source             = "./terraform_argocd_root_eks"
  eks_cluster_name   = "dev"
  git_source_path    = "dev/applications"
  git_source_repoURL = "git@github.com:plavez/argocd.git"
}
```

Copyleft (c) by Vladislav Golic.