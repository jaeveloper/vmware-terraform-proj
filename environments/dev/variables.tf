variable "env" {
  type    = string
  default = "dev"
}

variable "datacenter" {
  type = string
}

variable "cluster" {
  type = string
}

variable "datastore" {
  type = string
}

variable "network_cidr" {
  type = string
}

variable "k8s_worker_count" {
  type = number
}

variable "ssh_public_key" {
  type = string
}

# Avi Service Engines (THIS IS THE ONE ERRORING)
variable "se_name_prefix" {
  description = "Name prefix for Avi Service Engine VMs"
  type        = string
}

variable "se_count" {
  type    = number
  default = 2
}
