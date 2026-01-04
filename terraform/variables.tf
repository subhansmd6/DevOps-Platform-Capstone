variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-2"
}
 
variable "vpc_cidr" {
  type = string
}
 
variable "public_subnet_cidr" {
  type = string
}
 
variable "availability_zone" {
  type = string
}
 
variable "key_name" {
  description = "EC2 key pair name"
  type        = string
}
