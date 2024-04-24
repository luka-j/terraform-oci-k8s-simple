# Simple OCI Kubernetes infrastructure in Terraform

This repository hosts a set of Terraform scripts describing simple Kubernetes infrastructure on Oracle Cloud Infrastructure. `modules/` directory contains modules for setting up compartment, network (vcn) and Kubernetes cluster, nodes and a VM which can be used as a bastion. Kubernetes nodes use ARM64 nodes by default, and bastion VM is AMD64,
all part of OCI's [Always Free](https://docs.oracle.com/en-us/iaas/Content/FreeTier/freetier_topic-Always_Free_Resources.htm) tier. These modules are then used by the main script in `1-cluster/main.tf`.

## Usage
Set values for variables defined in `1-cluster/variables.tf`, either via CLI or using a `terraform.tfvars` file. Links to detailed instructions how to get required params in OCI are available in [docs](https://docs.oracle.com/en-us/iaas/Content/API/SDKDocs/terraformproviderconfiguration.htm#APIKeyAuth).
