locals {
  vm_web_name = "${var.nameVM}-${var.vpc_name}"
  vm_db_name  = "${var.vm_db_nameVM}-${var.vm_db_vpc_name}"
}
