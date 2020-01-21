output "QUAKE_TLD" {
  value       = var.TLD
}
output "QUAKE_CLUSTER_SSH_KEY" {
  value       = tls_private_key.quake.private_key_pem
}
output "QUAKE_CLUSTER_SSH_PUB" {
  value       = tls_private_key.quake.public_key_openssh
}
output "QUAKE_CLUSTER_GITOPS_SSH_KEY" {
  value       = tls_private_key.quake_gitops.private_key_pem
}
output "QUAKE_CLUSTER_GITOPS_SSH_PUB" {
  value       = tls_private_key.quake_gitops.public_key_openssh
}
output "QUAKE_CLUSTER_NAME" {
  value       = var.CLUSTER_NAME
}
output "QUAKE_REGION" {
  value       = var.REGION
}
output "QUAKE_STATE_STORE" {
  value       = aws_s3_bucket.env-state-bucket.bucket
}
#/*
output "QUAKE_CLUSTER_CERT_ARN" {
  value       = aws_acm_certificate.cert.arn
}
#*/
output "QUAKE_HOSTED_ZONE_ID" {
  value       = aws_route53_zone.quake.id
}
output "QUAKE_VPC_ID" {
  value       =  aws_vpc.quake.id
}
output "QUAKE_VPC_CIDR" {
  value       =  aws_vpc.quake.cidr_block
}
output "QUAKE_KMS_ARN" {
  value       =  aws_kms_key.kops_state.arn
}
output "QUAKE_ARGO_PASSWORD" {
  value       =  random_password.argo_admin_password.result
}
/*
output "QUAKE_" {
  value       =  
} 
*/
