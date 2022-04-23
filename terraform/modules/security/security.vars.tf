variable "allowed_cidr_block"{
 type = string
 description = "CIDR block allowed to ssh into ec2 "
}

variable "app_name"{
 type = string
 description = "application name"
}

variable "vpc_id"{
 type = string
 description = "Id of the vpc inside which ec2 will be put"
}
