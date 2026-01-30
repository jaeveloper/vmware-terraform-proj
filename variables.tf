variable "vsphere_user" {
  type        = string
  description = "vSphere username"
}

variable "vsphere_password" {
  type        = string
  description = "vSphere password"
  sensitive   = true
}

variable "vsphere_server" {
  type        = string
  description = "vCenter server FQDN or IP"
}
