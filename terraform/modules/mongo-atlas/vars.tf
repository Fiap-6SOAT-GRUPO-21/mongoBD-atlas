variable "database_username" {
  description = "Username for the master DB user."
  type        = string
}
variable "database_password" {
  description = "password of the database"
  type        = string
}

variable "database_name" {
  type    = string
}

variable "project_name" {
  type        = string
  description = "Name of the project"
}

variable "org_id" {
  type        = string
  description = "Organization ID"
}

variable "cluster_name" {
  type        = string
  description = "Name of the cluster"
}

variable "cidr" {
    type        = string
    description = "CIDR block"
}