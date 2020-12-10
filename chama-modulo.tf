module "create_vpc"{
  source                  = "./gcp-network"
  vpc                     = "vpc-terraform"
  auto_create_subnetworks = false
  subnet                  = "us-net"
  ip_cidr_range           = "192.168.20.0/24"
  region                  = "us-central1"
}

module "instance-adm"{
  source                  = "./gcp-instance"
  vm-name                 = "instance-adm"
  machine_type            = "f1-micro"
  zone                    = "us-central1-a"
  os-name                 = "ubuntu-os-cloud/ubuntu-1604-lts"
  network_interface       = module.create_vpc.subnet_self_link
}

module "instance-rh"{
  source                  = "./gcp-instance"
  vm-name                 = "instance-rh"
  machine_type            = "f1-micro"
  zone                    = "us-central1-b"
  os-name                 = "ubuntu-os-cloud/ubuntu-1604-lts"
  network_interface       = module.create_vpc.subnet_self_link
}