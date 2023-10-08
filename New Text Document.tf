// Variables

variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "key_name" {}

// providers

provider "aws" {
	access_key = "${var.aws_access_key}"
	secret_key = "${var.aws_secret_key}"
	region	   = "us-west-l"
}
	
//resources
	
resource "aws_instance" "nginx" {
	ami = "ami-1234"
	instance_type = "t2.micro"
	key_name = "${var.key_name}"
}	
