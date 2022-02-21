variable "cidr_pub_sub" {
  type        = list
  description = "The CIDR block for the public subnet"
  default     = ["192.16.0.0/24", "192.16.1.0/24"] //List of Public subnet cidr range
}

variable "cidr_priv_sub" {
  type        = list
  description = "The CIDR block for the private subnet"
  default     = ["192.16.2.0/24", "192.16.3.0/24"] //List of private subnet cidr range
}

variable "subnet_azs" {
  type        = list
  description = "Availability zones"
  default     = ["us-west-2a", "us-west-2b", "us-west-2c", "us-west-2d"]
}