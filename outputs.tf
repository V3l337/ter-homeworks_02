output "VM_web" {
  value = {
    instance_name = yandex_compute_instance.platform.name
    external_ip   = yandex_compute_instance.platform.network_interface.0.nat_ip_address
    fqdn          = "${yandex_compute_instance.platform.name}.${var.default_zone}.yc"
  }
}

output "VM_db" {
  value = {
    instance_name = yandex_compute_instance.platform_db.name
    external_ip   = yandex_compute_instance.platform_db.network_interface.0.nat_ip_address
    fqdn          = "${yandex_compute_instance.platform_db.name}.${var.vm_db_zone}.yc"
  }
}
