variable "vpc_cidr" {
    description =   "cidr_block of the main VPC"
    default   =   "10.0.0.0/16"
}
variable "tenancy" {
    description =   "tenancy of the main VPC"
    default = "default"
}
variable "cidr_pub_sub" {
	type = list
	default = ["10.0.3.0/24", "10.0.4.0/24"]
}
variable "cidr_priv_sub" {
	type = list
	default = ["10.0.5.0/24", "10.0.6.0/24"]
}
variable "subnet_azs" {
	type = list
	default = ["us-west-2a", "us-west-2b", "us-west-2c", "us-west-2d"]
}
#############################################################################################
variable "ecs_task_execution_role" {
    default     = "myECcsTaskExecutionRole"
    description = "ECS task execution role name"
}
variable "aws_region" {
  default     = "us-west-2"
  description = "aws region where our resources going to create choose"
  #replace the region as suits for your requirement
}
variable "app_image" {
  default     = "nginx:latest"
  description = "docker image to run in this ECS cluster"
}

variable "app_port" {
  default     = "80"
  description = "portexposed on the docker image"
}

variable "fargate_cpu" {
  type = number
  default     = "1024"
  description = "fargate instacne CPU units to provision,my requirent 1 vcpu so gave 1024"
}

variable "fargate_memory" {
  default     = "2048"
  description = "Fargate instance memory to provision (in MiB) not MB"
}

variable "app_count" {
  default     = "2" #choose 2 bcz i have choosen 2 AZ
  description = "numer of docker containers to run"
}

variable "health_check_path" {
  default = "/"
}