variable "region" {
  default = "us-west-2"
}

variable "cidr_block" {
  default = "10.0.0.0/16"
}

variable "subnet_cidr_block" {
  default = "10.0.1.0/24"
}

variable "availability_zone" {
  default = "us-west-2a"
}

variable "ami_id" {
  default = "ami-0aff18ec83b712f05" 
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  default = "task3" 
}

variable "vpc_tags" {
  default = {
    Name = "task3"
    Environment = "Production"
    Project = "Task3"
  }
}

