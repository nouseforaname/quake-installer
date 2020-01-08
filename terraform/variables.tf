#AWS CONFIG
#variable "access_key" {
#  type= string
#  default= ""
#}
#variable "secret_key" {
#  type= string
#  default= ""
#}
variable "REGION" {
  type            = string
  default         = ""
}

#DNS & HOSTNAMES
variable "TLD" {
  type            = string
  default         =""
  description     ="this will be your environments TLD"
}
variable "CLUSTER_NAME" {
  type            = string
  default         = "cf-kube"
  description     = "this will be your Cluster Name. Used for cluster TLD(=CLUSTER_NAME.TLD). Your Cluster will also get TLS Certs for *.CLUSTER_NAME.TLD"
}
