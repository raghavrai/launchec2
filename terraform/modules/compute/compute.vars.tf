variable "instance_type"{
 type = string
 default = "t2.medium"
 description = "instance type of the instance to be created, defatult is t2.medium"
}

variable "security_group"{
 type = string
 description = "security group of instance"
}

variable "vpc_id"{
 type = string
 description = "vpc id"
}