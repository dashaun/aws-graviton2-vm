variable "aws_region" {
  description = "Region into which to deploy the EC2 instance"
  default     = "us-east-2"
}

variable "linux_ami" {
  description = "AMI available in region"
  default     = "ami-00b9738bf35b1d1de"

}

variable "instance_type" {
  description = "instance type to use. Default: t3.micro"
  default     = "c6g.4xlarge"
}