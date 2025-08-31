terraform {
  required_providers {
    kubernetes = { source = "hashicorp/kubernetes", version = "~> 2.33" }
    helm       = { source = "hashicorp/helm", version = "~> 2.13" }
  }
}

resource "kubernetes_manifest" "argocd_root" {
  manifest = yamldecode(templatefile("${path.module}/root.yaml", {
    cluster_name   = var.cluster_name
    path           = var.git_source_path
    repoURL        = var.git_source_repoURL
    targetRevision = var.git_source_targetRevision
  }))
}
