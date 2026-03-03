###cloud vars
variable "cloud_id" {
  type        = string
  default     = ""
}

variable "folder_id" {
  type        = string
  default     = ""
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
}
variable "network_name" {
  type    = string
  default = "vpc-15-1"
}

variable "public_cidr" {
  type    = string
  default = "192.168.10.0/24"
}

variable "private_cidr" {
  type    = string
  default = "192.168.20.0/24"
}

variable "nat_ip" {
  type        = string
  description = "Static internal IP for NAT instance"
  default     = "192.168.10.254"
}

variable "nat_image_id" {
  type        = string
  description = "Image id for NAT instance "
  default     = "fd80mrhj8fl2oe87o4e1"
}

variable "ubuntu_family" {
  type        = string
  description = "Image family for regular VMs"
  default     = "ubuntu-2204-lts"
}

variable "vm_platform_id" {
  type    = string
  default = "standard-v3"
}

variable "vm_resources" {
  type = object({
    cores         = number
    memory        = number
    core_fraction = number
  })
  default = {
    cores         = 2
    memory        = 2
    core_fraction = 20
  }
}

variable "vms_metadata" {
  type = map(string)
  default = {
    "serial-port-enable" = "1"
    "ssh-keys"           = "ubuntu:ssh-ed25519"
  }
}
