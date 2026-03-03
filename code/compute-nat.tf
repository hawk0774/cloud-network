resource "yandex_compute_instance" "nat" {
  name        = "nat-instance"
  platform_id = var.vm_platform_id
  zone        = var.default_zone

  resources {
    cores         = var.vm_resources.cores
    memory        = var.vm_resources.memory
    core_fraction = var.vm_resources.core_fraction
  }

  boot_disk {
    initialize_params {
      image_id = var.nat_image_id
      size     = 10
      type     = "network-hdd"
    }
  }

  network_interface {
    subnet_id  = yandex_vpc_subnet.public.id
    ip_address = var.nat_ip
    nat        = true
  }

  metadata = var.vms_metadata
}

