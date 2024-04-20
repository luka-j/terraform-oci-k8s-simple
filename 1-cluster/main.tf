module "compartment" {
  source = "../modules/compartment"
  tenancy_id = "${var.tenancy_ocid}"
  name = "tf-sample-compartment"
  description = "Primer odeljka"
}

module "vcn" {
  source = "../modules/vcn"
  compartment_id = "${module.compartment.compartment_id}"
  name = "sample-vcn"
  dns_label = "primer"
}

module "kubernetes" {
  source = "../modules/kubernetes"
  compartment_id = "${module.compartment.compartment_id}"
  name = "sample-cluster"
  kubernetes_version = "v1.29.1"
  node_image_ocid = "ocid1.image.oc1.eu-frankfurt-1.aaaaaaaa3mctwlkbkaj76pnlrmdr7w6dd4frkrhuqrdadpq4g67kh5gqbn3q"
  vcn_id = "${module.vcn.vcn_id}"
  service_lb_subnet_id = "${module.vcn.public_subnet_ocid}"
  worker_node_pool_subnet_id = "${module.vcn.private_subnet_ocid}"
  endpoint_subnet_id = "${module.vcn.private_subnet_ocid}"
  availability_domains = module.compartment.availability_domains
  ssh_public_key = "${var.ssh_public_key}"
}
