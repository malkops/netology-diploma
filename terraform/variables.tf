variable "cloud_id" {
  description = "cloud id"
  type = string
}

variable "folder_id" {
  description = "folder id"
  type = string
}

variable "service_account_key_file" {
  description = "auth key file"
  type = string
}

variable "get_creds" {
  description = "1 if need to get cluster creds else 0"
  default = 0
  type = number
}
