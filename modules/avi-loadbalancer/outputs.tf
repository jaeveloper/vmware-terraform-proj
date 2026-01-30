output "avi_controller_names" {
  description = "Names of Avi Controller VMs"
  value       = vsphere_virtual_machine.avi_controller[*].name
}

output "avi_controller_ids" {
  description = "VM IDs of Avi Controllers"
  value       = vsphere_virtual_machine.avi_controller[*].id
}
