###cloud vars


variable "cloud_id" {
  type        = string
  default     = "b1gl7du1jcj4afu5ga3o"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  default     = "b1g14g1nhanrqc2pvhjs"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}


###ssh vars

# variable "vms_ssh_root_key" {
#   type        = string
#   default     = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEa911wA85njnnD+28i1a3TuZcu+7Ma7gDShv4dM4O1v root@MRN-Server"
# }

# переменная для имени ВМ
variable "nameVM" {
  type        = string
  default     = "netology-develop-platform-web"
}

# ID образ
variable "nameImagesF" {
  type        = string
  default     = "ubuntu-2004-lts"
}

# переменная для платформы
variable "platform_id" {
  type        = string
  default     = "standard-v1"
}

# # переменная для количества ядер cpu
# variable "cores" {
#   type        = number
#   default     = 2
# }

# # переменная для объема памяти cpu
# variable "memory" {
#   type        = number
#   default     = 1
# }

# # переменная мощности cpu
# variable "power" {
#   type        = number
#   default     = 5
# }

variable "vms_resources" {
  type = map(object({
    cores         = number
    memory        = number
    core_fraction = number
  }))
}

variable "vms_metadata" {
  type = map(object({
    serial_port_enable = number
    ssh_keys           = string
  }))
  description = "Common metadata for all VMs"
}