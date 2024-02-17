resource "yandex_kubernetes_cluster" "regional_diploma_cluster" {
  name        = "diploma-cluster"

  network_id = "${yandex_vpc_network.diploma.id}"

  master {
    regional {
      region = "ru-central1"

      location {
        zone      = "${yandex_vpc_subnet.subnet-a.zone}"
        subnet_id = "${yandex_vpc_subnet.subnet-a.id}"
      }

      location {
        zone      = "${yandex_vpc_subnet.subnet-b.zone}"
        subnet_id = "${yandex_vpc_subnet.subnet-b.id}"
      }

      location {
        zone      = "${yandex_vpc_subnet.subnet-c.zone}"
        subnet_id = "${yandex_vpc_subnet.subnet-c.id}"
      }
    }

    version   = "1.28"
    public_ip = true

    maintenance_policy {
      auto_upgrade = false
    }
    
    master_logging {
      enabled = true
      folder_id = var.folder_id
      kube_apiserver_enabled = true
      cluster_autoscaler_enabled = true
      events_enabled = true
      audit_enabled = true
    }
  }

  service_account_id      = "ajehq0tcfoqui9t4h4lh"
  node_service_account_id = "ajehq0tcfoqui9t4h4lh"

  release_channel = "STABLE"
}
