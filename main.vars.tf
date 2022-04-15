variable "region"{
 type = string
 description = "AWS region in which the resources need to be created"
}

variable "app_name"{
 type = string
 description = "application name"
}

variable "allowed_cidr_block"{
 type = string
 description = "CIDR block allowed to ssh into ec2"
}

variable "vpc_id"{
 type = string
 description = "Id of the vpc inside which ec2 will be put"
}
