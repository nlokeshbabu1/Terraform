output "eks-cluster_name" {
  value = aws_eks_cluster.eks-cluster.name

}

output "eks-cluster_version" {
  value = aws_eks_cluster.eks-cluster.version

}


output "vpc_name" {
  value = aws_vpc.eks-aws_vpc.id

}

output "vpc_cidr_block" {
  value = var.vpc_cidr_block

}


output "public_subnet" {
  value = aws_subnet.eks-public[*].id

}

output "cluster_arn" {
  value = aws_eks_cluster.eks-cluster.arn

}

output "node_group_name" {
  value = aws_eks_node_group.aws_eks_node_group.node_group_name

}
