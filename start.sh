
#!/usr/bin/bash
# Reading oracleid and customer id
ORACLESID=$1
CUSTID=$2
# Message display
echo -e "You entered $ORACLESID and $CUSTID."
echo -e "Thank you. Please see the README.md for advanced options and further info"

echo $ORACLESID > oraclesid.BAK
echo $CUSTID > custid.BAK

echo $CUSTID > customerid.BAK
export ORACLESID=$(cat oraclesid.BAK)
export CUSTID=$(cat custid.BAK)
sed -i -e "1s/^/$ORACLESID/" custid.BAK
export COMBINEDNAME=$(cat custid.BAK)
sed -i -e "s/replaceme/$COMBINEDNAME/g" main.tf
sleep 2
echo -e "Provisioning infra"
export TF_VAR_tag_instance=$CUSTID-$ORACLESID
export TF_VAR_oraclesid=$ORACLESID
terraform init
terraform plan
terraform apply -auto-approve
##echo -e "Successfully executed"

cd ~/error_check/ansible
sudo ./get_IPs.sh
sudo ansible-playbook Playbook.yml
exit
