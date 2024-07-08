module "eks-cluster-autoscaler" {
  source  = "lablabs/eks-cluster-autoscaler/aws"
  version = "2.2.0"
  # insert the 3 required variables here
  cluster_name                     = module.eks.eks_cluster_id
  cluster_identity_oidc_issuer     = module.eks.eks_cluster_identity_oidc_issuer
  cluster_identity_oidc_issuer_arn = module.eks.eks_cluster_identity_oidc_issuer_arn

}
