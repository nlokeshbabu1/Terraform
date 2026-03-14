resource "aws_eks_addon" "eks_addon_vpc_cni" {
  depends_on = [ aws_eks_cluster.eks-cluster ]
  cluster_name = var.cluster_name
  addon_name = "vpc-cni"
  addon_version = "v1.21.1-eksbuild.3"
#  most_recent = true
  service_account_role_arn = aws_iam_role.eks-iam-role.arn
  depends_on = [
    aws_eks_node_group.aws_eks_node_group,
    aws_iam_role_policy_attachment.eks_service_policy
  ]

  tags = {
    Name = "eks_addon"
  }
  
}

resource "aws_eks_addon" "eks_addon_kube_proxy" {
  depends_on = [ aws_eks_cluster.eks-cluster ]
  cluster_name = var.cluster_name
  addon_name = "kube-proxy"
  addon_version = "v1.34.3-eksbuild.2"
  #most_recent = true
  service_account_role_arn = aws_iam_role.eks-iam-role.arn
  depends_on = [
    aws_eks_node_group.aws_eks_node_group,
    aws_iam_role_policy_attachment.eks_service_policy
  ]

  tags = {
    Name = "eks_addon"
  }
  
}

resource "aws_eks_addon" "eks_addon_core_dns" {
  depends_on = [ aws_eks_cluster.eks-cluster ]
  cluster_name = var.cluster_name
  addon_name = "coredns"
  addon_version = "v1.13.2-eksbuild.1"
  #most_recent = true
  service_account_role_arn = aws_iam_role.eks-iam-role.arn
  tags = {
    Name = "eks_addon"
  }
  
}

resource "aws_eks_addon" "eks_addon_ebs" {
  depends_on = [ aws_eks_cluster.eks-cluster ]
  cluster_name = var.cluster_name
  addon_name = "ebs-csi-driver"
  addon_version = "v1.56.0-eksbuild.1"
  #most_recent = true
  service_account_role_arn = aws_iam_role.eks-iam-role.arn
  tags = {
    Name = "eks_addon"
  }
  
}

resource "aws_eks_addon" "eks_addon_metric" {
  depends_on = [ aws_eks_cluster.eks-cluster ]
  cluster_name = var.cluster_name
  addon_name = "metrics-server"
  addon_version = "v0.8.1-eksbuild.1"
  #most_recent = true
  service_account_role_arn = aws_iam_role.eks-iam-role.arn
  tags = {
    Name = "eks_addon"
  }
  
}
