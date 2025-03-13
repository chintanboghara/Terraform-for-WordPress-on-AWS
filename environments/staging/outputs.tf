output "vpc_id" {
  description = "ID of the VPC"
  value       = module.networking.vpc_id
}

output "cluster_endpoint" {
  description = "Endpoint of the EKS cluster"
  value       = module.eks.cluster_endpoint
}