vms_resources = {
  web = {
    cores         = 2
    memory        = 1
    core_fraction = 5
  },
  db = {
    cores         = 2
    memory        = 2
    core_fraction = 20
  }
}

vms_metadata = {
  common = {
    serial_port_enable = 1
    ssh_keys           = "ubuntu:ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEa911wA85njnnD+28i1a3TuZcu+7Ma7gDShv4dM4O1v root@MRN-Server"
  }
}