module "hail-cluster-as45" {
  source       = "../modules/hail/v1/cluster"
  env          = "${var.env}"
  region       = "${var.region}"
  setup        = "${var.setup}"
  core_context = "${data.terraform_remote_state.hgi-core.core_context}"
  ssh_gateway  = "${data.terraform_remote_state.hgi-core.ssh_gateway}"
  domain       = "hgi.sanger.ac.uk"
  network_name = "main"

  hail_cluster_id        = "as45"
  master_count           = 1
  compute_count          = 1
  master_image           = "${data.terraform_remote_state.hgi-core.hgi-openstack-image-hgi-docker-xenial-4cb02ffa}"
  compute_image          = "${data.terraform_remote_state.hgi-core.hgi-openstack-image-hgi-docker-xenial-4cb02ffa}"
  master_flavour         = "o1.large"
  compute_flavour        = "o1.large"
  master_volume_size_gb  = 100
  compute_volume_size_gb = 100
}

module "hail-cluster-as45-2" {
  source       = "../modules/hail/v2/cluster"
  env          = "${var.env}"
  region       = "${var.region}"
  setup        = "${var.setup}"
  core_context = "${data.terraform_remote_state.hgi-core.core_context}"
  ssh_gateway  = "${data.terraform_remote_state.hgi-core.ssh_gateway}"
  domain       = "hgi.sanger.ac.uk"
  network_name = "main"

  hail_cluster_id        = "as45-2"
  master_count           = 1
  compute_count          = 0
  master_image           = "${data.terraform_remote_state.hgi-core.hgi-openstack-image-hgi-docker-xenial-4cb02ffa}"
  compute_image          = "${data.terraform_remote_state.hgi-core.hgi-openstack-image-hgi-docker-xenial-4cb02ffa}"
  master_flavour         = "o1.3xlarge"
  compute_flavour        = "o1.3xlarge"
  master_volume_size_gb  = 100
  compute_volume_size_gb = 100
}

module "hail-cluster-as45-4" {
  source       = "../modules/hail/v2/cluster"
  env          = "${var.env}"
  region       = "${var.region}"
  setup        = "${var.setup}"
  core_context = "${data.terraform_remote_state.hgi-core.core_context}"
  ssh_gateway  = "${data.terraform_remote_state.hgi-core.ssh_gateway}"
  domain       = "hgi.sanger.ac.uk"
  network_name = "main"

  hail_cluster_id              = "as45-4"
  master_count                 = 1
  compute_count                = 40
  master_image                 = "${data.terraform_remote_state.hgi-core.hgi-openstack-image-hgi-docker-xenial-4cb02ffa}"
  compute_image                = "${data.terraform_remote_state.hgi-core.hgi-openstack-image-hgi-docker-xenial-4cb02ffa}"
  master_flavour               = "m1.medium"
  compute_flavour              = "m1.medium"
  master_volume_size_gb        = 100
  compute_volume_size_gb       = 100
  compute_auto_anti_affinity_p = false
}

module "hail-cluster-kk8" {
  source       = "../modules/hail/v2/cluster"
  env          = "${var.env}"
  region       = "${var.region}"
  setup        = "${var.setup}"
  core_context = "${data.terraform_remote_state.hgi-core.core_context}"
  ssh_gateway  = "${data.terraform_remote_state.hgi-core.ssh_gateway}"
  domain       = "hgi.sanger.ac.uk"
  network_name = "main"

  hail_cluster_id        = "kk8"
  master_count           = 1
  compute_count          = 1
  master_image           = "${data.terraform_remote_state.hgi-core.hgi-openstack-image-hgi-docker-xenial-4cb02ffa}"
  compute_image          = "${data.terraform_remote_state.hgi-core.hgi-openstack-image-hgi-docker-xenial-4cb02ffa}"
  master_flavour         = "o1.3xlarge"
  compute_flavour        = "o1.3xlarge"
  master_volume_size_gb  = 100
  compute_volume_size_gb = 100
}

module "hail-cluster-kw8" {
  source       = "../modules/hail/v2/cluster"
  env          = "${var.env}"
  region       = "${var.region}"
  setup        = "${var.setup}"
  core_context = "${data.terraform_remote_state.hgi-core.core_context}"
  ssh_gateway  = "${data.terraform_remote_state.hgi-core.ssh_gateway}"
  domain       = "hgi.sanger.ac.uk"
  network_name = "main"

  hail_cluster_id        = "kw8"
  master_count           = 1
  compute_count          = 1
  master_image           = "${data.terraform_remote_state.hgi-core.hgi-openstack-image-hgi-docker-xenial-4cb02ffa}"
  compute_image          = "${data.terraform_remote_state.hgi-core.hgi-openstack-image-hgi-docker-xenial-4cb02ffa}"
  master_flavour         = "o1.3xlarge"
  compute_flavour        = "o1.3xlarge"
  master_volume_size_gb  = 100
  compute_volume_size_gb = 100
}

module "hail-cluster-vvi" {
  source       = "../modules/hail/v2/cluster"
  env          = "${var.env}"
  region       = "${var.region}"
  setup        = "${var.setup}"
  core_context = "${data.terraform_remote_state.hgi-core.core_context}"
  ssh_gateway  = "${data.terraform_remote_state.hgi-core.ssh_gateway}"
  domain       = "hgi.sanger.ac.uk"
  network_name = "main"

  hail_cluster_id              = "vvi"
  master_count                 = 1
  compute_count                = 40
  master_image                 = "${data.terraform_remote_state.hgi-core.hgi-openstack-image-hgi-docker-xenial-4cb02ffa}"
  compute_image                = "${data.terraform_remote_state.hgi-core.hgi-openstack-image-hgi-docker-xenial-4cb02ffa}"
  master_flavour               = "m2.3xlarge"
  compute_flavour              = "m2.3xlarge"
  master_volume_size_gb        = 100
  compute_volume_size_gb       = 100
  compute_auto_anti_affinity_p = false
}
