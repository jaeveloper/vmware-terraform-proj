module "app_network" {
  source = "../../modules/vsphere-network"

  datacenter   = var.datacenter
  network_name = "dev-app-network"
  vlan_id      = 100
}


module "k8s_control_plane" {
  source = "../../modules/vsphere-vm"

  name_prefix   = "dev-k8s-cp"
  instance_count = 1

  datacenter   = var.datacenter
  cluster      = var.cluster
  datastore    = var.datastore
  network_name = module.app_network.network_name
  template     = "ubuntu-22.04-template"
  ssh_public_key = var.ssh_public_key

}

module "k8s_workers" {
  source = "../../modules/vsphere-vm"

  name_prefix    = "dev-k8s-worker"
  instance_count = var.k8s_worker_count

  datacenter     = var.datacenter
  cluster        = var.cluster
  datastore      = var.datastore
  network_name   = module.app_network.network_name
  template       = "ubuntu-22.04-template"
  ssh_public_key = var.ssh_public_key
}

module "avi_lb" {
  source = "../../modules/avi-loadbalancer"

  datacenter              = var.datacenter
  cluster                 = var.cluster
  datastore               = var.datastore
  network_name            = module.app_network.network_name
  controller_name_prefix  = "dev-avi-controller"
  controller_count        = 1
  template                = "avi-controller-template"
  ssh_public_key          = var.ssh_public_key
}


