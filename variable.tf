
variable "size_gb" {
   type = number

    default = 7
}

variable "location_id" {
    type = string
    default = "us-central1-a"
}

variable "local_network" {
    type = string
    default = "XXXXXXx"
}

variable "number_replica" {
    type = number

    default = 1
}


variable "project_id" {
    type = string

    default = "digital-elysium-359521"
}


variable "label" {

    default = {
      my_key    = "my_val"
      other_key = "other_val"
    }
}
