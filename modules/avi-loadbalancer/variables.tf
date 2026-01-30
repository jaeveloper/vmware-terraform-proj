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

variable "controller_name_prefix" {
  type = string
}

variable "controller_count" {
  type    = number
  default = 1
}

variable "template" {
  type = string
}

variable "ssh_public_key" {
  type = string
}

variable "se_name_prefix" {
  type = string
}

variable "se_count" {
  type    = number
  default = 2
}

variable "se_cpu" {
  type    = number
  default = 4
}

variable "se_memory" {
  type    = number
  default = 16384
}
