
resource "google_redis_instance" "cache" {
  name           = "redis-memorystore${count.index}"
  tier           = "STANDARD_HA"
  project        = var.project_id
  memory_size_gb = var.size_gb
  count = 2

  location_id             = var.location_id

#####Specify a network #####
#  authorized_network = var.local_network

  redis_version     = "REDIS_6_X"
  display_name      = "Terraform Test Instance"

  #### specify a reserve IP if necessary######

  #reserved_ip_range = "192.168.0.0/28"
  replica_count     = var.number_replica
  read_replicas_mode = "READ_REPLICAS_ENABLED"
  auth_enabled = true

  #### have to be use after you specify  authorized_network ####
  #connect_mode       = "PRIVATE_SERVICE_ACCESS"


  labels = var.label
}
