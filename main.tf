# This is a simple Terraform configuration file that creates an EC2 instance and an S3 bucket in AWS.
resource "aws_instance" "Myserver" {
  ami           = var.ami_id
  instance_type = var.instance_type
  count         = 2

  tags = {
    Name        = "${var.project_name}-${var.env}-ec2-instance-${count.index + 1}"
    Environment = var.env
    Project     = var.project_name
  }
}

resource "aws_s3_bucket" "demo_bucket" {
  bucket        = "${lower(var.project_name)}-${lower(var.env)}-bucket"
  force_destroy = true

  tags = {
    Name        = "${var.project_name}-bucket"
    Environment = var.env
    Project     = var.project_name
  }
}

