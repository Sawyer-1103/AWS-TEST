output "node_group_name" {
  value = aws_eks_node_group.this.node_group_name
}

output "cluster_name" {
  value = aws_eks_node_group.this.cluster_name
}