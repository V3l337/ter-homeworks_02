# Переменная для имени второй ВМ
variable "vm_db_nameVM" {
  type        = string
  default     = "netology-develop-platform-db"
}

# Переменная для ID образа второй ВМ
variable "vm_db_nameImagesF" {
  type        = string
  default     = "ubuntu-2004-lts"
}

# Переменная для платформы второй ВМ
variable "vm_db_platform_id" {
  type        = string
  default     = "standard-v1"
}

# # Переменная для количества ядер CPU второй ВМ
# variable "vm_db_cores" {
#   type        = number
#   default     = 2
# }

# # Переменная для объема памяти второй ВМ
# variable "vm_db_memory" {
#   type        = number
#   default     = 2
# }

# # Переменная мощности CPU второй ВМ
# variable "vm_db_power" {
#   type        = number
#   default     = 20
# }

# Зона для второй ВМ
variable "vm_db_zone" {
  type        = string
  default     = "ru-central1-b"
}

# Переменная для имени VPC для второй ВМ
variable "vm_db_vpc_name" {
  type        = string
  default     = "develop_db"
  description = "VPC network & subnet name"
}

# Переменная для CIDR блока второй ВМ
variable "vm_db_default_cidr" {
  type        = list(string)
  default     = ["10.0.2.0/24"]
}