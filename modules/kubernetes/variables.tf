variable "compartment_id" {
  description = "OCID of the compartment in which to create VCN"
  type = string
}

variable "ssh_public_key" {
  description = "SSH public key of the pair that will be used for SSH access for the bastion host instance"
  type = string
}

variable "name" {
  type = string
}

variable "vcn_id" {
  type = string
}

variable "service_lb_subnet_id" {
  type = string
}

variable "worker_node_pool_subnet_id" {
  type = string
}

variable "endpoint_subnet_id" {
  type = string
}

variable "availability_domains" {
  type = list
}

variable "kubernetes_version" {
  type = string
}

variable "node_image_ocid" {
  type = string
  description = "OCID of image that should be used on nodes. If using Oracle Linux optimized for OKE, this is tied to Kubernetes version. See https://docs.oracle.com/en-us/iaas/images"
}

variable "a1_pool_size" {
  type = number
  default = 2
}
variable "a1_pool_memory_gbs" {
  type = number
  default = 5
}
variable "a1_pool_ocpus" {
  type = number
  default = 1
}

