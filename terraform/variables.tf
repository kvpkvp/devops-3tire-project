variable "region" {
  default = "ap-south-1"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "cluster_name" {
  default = "devops-eks-cluster"
}

variable "db_name" {
  default = "devopsdb"
}

variable "db_username" {
  default = "admin" 
}

variable "db_password" {
  default = "admin12345"
}


