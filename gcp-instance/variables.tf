variable "vm-name"{
    type        = string
    description = "nome da instancia"
    default     = "vm-us"
}
variable "machine_type"{
    type        = string
    description = "tipo de maquina"
    default     = "f1-micro"
}
variable "zone"{
    type        = string
    description = "tipo de maquina"
    default     = "us-central1-a"
}
variable "os-name"{
    type        = string
    description = "SO da maquina"
    default     = "ubuntu-os-cloud/ubuntu-1604-lts"
}
variable "network_interface"{
    type        = string
    description = "interface 1"
    default     = "default"
}

