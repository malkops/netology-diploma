resource "yandex_vpc_network" "diploma" {
  name = "diploma"
}

resource "yandex_vpc_subnet" "subnet-a" {
  name           = "a"
  zone           = "ru-central1-a"
  network_id     = yandex_vpc_network.diploma.id
  v4_cidr_blocks = ["192.168.1.0/24"]
}

resource "yandex_vpc_subnet" "subnet-b" {
  name           = "b"
  zone           = "ru-central1-b"
  network_id     = yandex_vpc_network.diploma.id
  v4_cidr_blocks = ["192.168.2.0/24"]
}

resource "yandex_vpc_subnet" "subnet-c" {
  name           = "c"
  zone           = "ru-central1-c"
  network_id     = yandex_vpc_network.diploma.id
  v4_cidr_blocks = ["192.168.3.0/24"]
}


# resource "yandex_dns_zone" "malkops" {
#   name        = "malkops.ru"
#   description = "malkops public zone"

#   zone             = "malkops.ru."
#   public           = true
# }

# resource "yandex_dns_recordset" "rs1" {
#   zone_id = yandex_dns_zone.malkops.id
#   name    = "malkops.ru."
#   type    = "A"
#   ttl     = 200
#   data    = ["10.1.0.1"]
# }
