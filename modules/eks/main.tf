resource "aws_eks_cluster" "main" {
  name     = "${var.environment}-eks-cluster"
  role_arn = var.cluster_role_arn
  vpc_config {
    subnet_ids = var.subnet_ids
  }
}

# Add node groups or other EKS resources as needed.