variable "vpc_cidr_block" {
  default = "10.0.0.0/16"
  description = "Cidr block for first VPC - myyvpc"
  type = string
}

variable "web_sn" {
  default = "10.0.1.0/24"
  description = "Cidr block for subnet"
  type = string
}