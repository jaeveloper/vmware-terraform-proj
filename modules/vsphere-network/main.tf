data "vsphere_datacenter" "dc" {
  name = var.datacenter
}

resource "vsphere_distributed_port_group" "pg" {
  name                            = var.network_name
  distributed_virtual_switch_uuid = data.vsphere_datacenter.dc.id
  vlan_id                         = var.vlan_id
}
