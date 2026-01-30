output "avi_controller_names" {
  description = "Names of Avi Controller VMs"
  value       = vsphere_virtual_machine.avi_controller[*].name
}

output "avi_controller_ids" {
  description = "VM IDs of Avi Controllers"
  value       = vsphere_virtual_machine.avi_controller[*].id
}

output "avi_service_engine_names" {
  description = "Names of Avi Service Engine VMs"
  value       = vsphere_virtual_machine.avi_service_engine[*].name
}

output "avi_service_engine_ids" {
  description = "IDs of Avi Service Engine VMs"
  value       = vsphere_virtual_machine.avi_service_engine[*].id
}
