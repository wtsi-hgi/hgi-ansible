module "ssh-gateway" {
  source = "../modules/ssh-gateway"

  image = {
    name = "hgi-base-freebsd11-575611a5"
    user = "beastie"
  }

  flavour            = "m1.small"
  domain             = "zeta-hgiarvados.hgi.sanger.ac.uk"
  security_group_ids = "${module.openstack.security_group_ids}"
  key_pair_ids       = "${module.openstack.key_pair_ids}"
  network_id         = "${module.openstack.network_id}"

  extra_ansible_groups = ["consul-cluster-zeta-hgiarvados"]
}

output "ssh_gateway_host" {
  value = "${module.ssh-gateway.host}"
}

output "ssh_gateway_user" {
  value = "${module.ssh-gateway.user}"
}
