module "api_payments_atlas" {
  source            = "./modules/mongo-atlas"
  cluster_name      = var.api_payments_database_credentials.cluster_name
  database_password = var.api_payments_database_credentials.password
  database_username = var.api_payments_database_credentials.username
  org_id            = var.api_payments_database_credentials.org_id
  project_name      = var.api_payments_database_credentials.project_name
  atlas_private_key = var.api_payments_database_credentials.atlas_private_key
  atlas_public_key  = var.api_payments_database_credentials.atlas_public_key
  cidr              = var.api_payments_database_credentials.cidr
  database_name     = var.api_payments_database_credentials.database_name
}

resource "aws_ssm_parameter" "atlas_cluster_name" {
  name  = "/techchallenge/api_payments/atlas/cluster_name"
  type  = "String"
  value = "mongodb+srv://${var.api_payments_database_credentials.username}:${var.api_payments_database_credentials.password}@${module.api_payments_atlas.mongodb_cluster_name}.mongodb.net"
}

resource "aws_ssm_parameter" "atlas_payments_name" {
  name  = "/techchallenge/api_payments/atlas/db_name"
  type  = "String"
  value = var.api_payments_database_credentials.database_name
}
