variable "vpc"{
   type        = string
   description = "nome vpc"
   default     = "vpc"

}

variable "auto_create_subnetworks"{
    type        = bool
    description = "criar subrede automaticamente" 
    default     = false
}

variable "subnet"{
    type        = string
    description = "nome da subrede"
    default     = "nw-us"
}

variable "ip_cidr_range"{
    type        = string
    description = "subrede"
    default     = "192.168.10.0/24" 
}

variable "region"{
    type        = string
    description = "Região"
    default     = "us-central1" 
}

