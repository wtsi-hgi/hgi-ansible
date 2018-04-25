module "openstack" {
  source             = "../modules/openstack-v2"
  env                = "${var.env}"
  region             = "${var.region}"
  mercury_keypair    = "${var.mercury_keypair}"
  subnet             = "10.101.0.0/24"
  gateway_ip         = "10.101.0.1"
  dns_nameservers    = ["172.18.255.1", "172.18.255.2", "172.18.255.3"]
  host_routes        = []
  router_count       = 1
  external_gateway   = "${var.openstack_external_gateway}"
}

output "openstack_security_group_ids" {
  value = "${module.openstack.security_group_ids}"
}

output "openstack_key_pair_ids" {
  value = "${module.openstack.key_pair_ids}"
}

output "openstack_network_id" {
  value = "${module.openstack.network_id}"
}
