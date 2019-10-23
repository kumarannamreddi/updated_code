# 1. Find the tags resulted ec2
data "aws_instance" "customer_instances" {
  filter {
    name   = "tag:Name"
    values = ["${split(',', var.input_tags)}*"]
  }
}

resource "null_resource" "customer_resource" {

    for_each = "${data.customer_instances.*.private_ip}"

    # Copy invoke.sh to remote
    provisioner "file" {
        source      = "./invoke.sh"
        destination = "/home/ec2-user/invoke.sh"

        connection {
            type     = "ssh"
            user     = "ec2-user"
            private_key = "${file(var.pem_file)}"
            host     = "${each.key}"
        }
    }

    # Execute invoke.sh
    provisioner "remote-exec" {
        inline = [
            "chmod +x /home/ec2-user/invoke.sh",
            "./home/ec2-user/invoke.sh",
        ]

        connection {
            type     = "ssh"
            user     = "ec2-user"
            private_key = "${file(var.pem_file)}"
            host     = "${each.key}"
        }
    }
}

