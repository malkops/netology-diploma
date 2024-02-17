# resource "yandex_iam_service_account" "k8s-cluster-role" {
#   name        = "k8s-cluster-role"
#   description = "service account to manage k8s cluster"
#   folder_id = var.folder_id
# }

# resource "yandex_iam_service_account" "k8s-cluster-node" {
#   name        = "k8s-cluster-node"
#   description = "service account to manage node group"
#   folder_id = var.folder_id
# }

# resource "yandex_iam_service_account_iam_binding" "admin-account-iam" {
#   service_account_id = "${yandex_iam_service_account.k8s-cluster-role.id}"
#   role               = "editor"

#   members = [
#     "serviceAccount:k8s-cluster-role",
#     "serviceAccount:k8s-cluster-node",
#   ]
# }

# resource "yandex_iam_service_account_iam_binding" "admin-account-iam" {
#   service_account_id = "k8s-cluster-node"
#   role               = "editor"

#   members = [
#     "serviceAccount:k8s-cluster-node",
#   ]
# }