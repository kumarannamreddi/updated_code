#!/bin/bash
export TF_VAR_input_tags = "XPPNP*,XPSISIS"
export TF_VAR_pem_file = "/Users/partha/support/xppnp.pem"
terraform init --profile=kumar
terraform plan --profile=kumar
# terraform apply
# terraform output