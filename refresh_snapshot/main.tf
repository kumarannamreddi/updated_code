# 1. Find the tags resulted ec2
data "aws_instance" "customer_instances" {
  filter {
    name   = "tag:Name"
    values = ["${split(',', var.input_tags)}*"]
  }
}

# Run null_pointer for desired script

