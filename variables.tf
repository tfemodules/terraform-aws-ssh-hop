variable "subnet_id" {
  type        = string
  description = "The Id of the subnet in which to place the EC2 instance."
}

variable "vpc_id" {
  type        = string
  description = "The Id of the VPC in which the subnet is placed."
}

variable "allow_ingress_cidrs" {
  type        = list(string)
  description = "List of CIDRs from which incoming SSH connections are allowed. If the list is empty 0.0.0.0/0 will be used."
  default     = []
}

variable "key_name" {
  type        = string
  description = "Name of the AWS key pair to use for the EC2 instance."
}

variable "common_tags" {
  type        = map(string)
  description = "Common tags to assign to all resources."
  default     = {}
}

variable "name_prefix" {
  type        = string
  description = "A string to be used as prefix for generating names of the created resources."
  default     = "tfe-"
}

variable "ssh_private_keys" {
  type        = map(string)
  description = "A map of strings where the values contain private ssh keys to add to the Ubuntu user on the EC2 instance. File names are based on the map keys."
  default     = {}
  sensitive   = true
}

variable "tfe_asg_group" {
  type        = string
  description = "The name of the AWS Auto Scaling group containing the instances for which the `tfeip` alias will retrieve IP Addresses."
  default     = ""
}
