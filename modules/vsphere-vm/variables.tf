/*variable "vm_name" {
  type = string
}*/

variable "datacenter" {
  type = string
}

variable "cluster" {
  type = string
}

variable "datastore" {
  type = string
}

variable "network_name" {
  type = string
}

variable "template" {
  type = string
}

variable "name_prefix" {
  type = string
}

variable "instance_count" {
  type    = number
  default = 1
}

variable "ssh_public_key" {
  type = string
}

