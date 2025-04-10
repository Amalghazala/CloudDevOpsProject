variable "subnet_id" {
  description = "The Subnet ID to launch the EC2 instance in"
  type        = string
}

variable "security_group_id" {
  description = "The Security Group ID to attach to the EC2 instance"
  type        = string
}

variable "instance_count" {
  description = "Number of EC2 instances to launch"
  type        = number
}

variable "key_name" {
  description = "The name of the EC2 Key Pair for SSH access"
  type        = string
}
variable "instance_type" {
  description = "Type of EC2 instance"
  type        = string
  default     = "t3.medium"
}