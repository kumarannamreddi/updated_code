output "latest_ips" {
  value = "${data.aws_instance.customer_instances.outputs}"
}