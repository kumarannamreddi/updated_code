# Tags input
variable "input_tags" {
    description  = "Tags to identify the customer (comma seperated)"
    type         = string
}

# Location of the pem file
variable "pem_file" {
    description = "Location of pem file"
    type = string
}