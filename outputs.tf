output "csi_drivers_id" {
  description = "Map of id values across all csi_drivers, keyed the same as var.csi_drivers except keys with no id are omitted"
  value       = { for k, v in kubernetes_csi_driver.csi_drivers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "csi_drivers_metadata" {
  description = "Map of metadata values across all csi_drivers, keyed the same as var.csi_drivers except keys with no metadata are omitted"
  value       = { for k, v in kubernetes_csi_driver.csi_drivers : k => one(v.metadata) if v.metadata != null && length(v.metadata) > 0 }
}
output "csi_drivers_spec" {
  description = "Map of spec values across all csi_drivers, keyed the same as var.csi_drivers except keys with no spec are omitted"
  value       = { for k, v in kubernetes_csi_driver.csi_drivers : k => one(v.spec) if v.spec != null && length(v.spec) > 0 }
}

