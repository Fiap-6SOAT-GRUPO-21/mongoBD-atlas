variable "atlas_public_key" {
  description = "MongoDB Atlas Public Key"
  type        = string
}

variable "atlas_private_key" {
  description = "MongoDB Atlas Private Key"
  type        = string
}

variable "atlas_org_id" {
  description = "MongoDB Atlas Organization ID"
  type        = string
}

variable "atlas_username" {
  description = "Database username"
  type        = string
}

variable "atlas_password" {
  description = "Database password"
  type        = string
}

variable "region" {
  description = "AWS region to deploy to"
  default     = "us-east-1"
  type        = string
}

variable "api_payments_database_credentials" {
  description = "Credentials for database creation"

  type = object({
    cidr          = string
    project_name  = string
    cluster_name  = string
    database_name = string
  })

  default = {
    cidr          = "0.0.0.0/0"
    project_name  = "tech-challenge-payments"
    cluster_name  = "api-payments-cluster"
    database_name = "apipayments"
  }
}