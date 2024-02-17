resource "null_resource" "get_resouces" {
  count = var.get_creds
  
  provisioner "local-exec" {
    command = "yc managed-kubernetes cluster get-credentials ${yandex_kubernetes_cluster.regional_diploma_cluster.id} --external --force"
  }
  
  provisioner "local-exec" {
    command = "kubectl create namespace monitoring"
  }
}

