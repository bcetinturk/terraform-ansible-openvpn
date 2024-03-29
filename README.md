
### Terraform Setup

```
az login
az account subscription list
az ad sp create-for-rbac --name <principal_name> --role Contributor --scopes /subscriptions/<subscription_id>
```

### Run Terraform

Create terraform.tfvars in terraform directory

```
terraform plan -out main.tfplan
terraform apply main.tfplan
```

### Output SSH Key

```
terraform output -raw tls_private_key > id_rsa
chmod 0400 id_rsa
```
### Ansible Playbook
```
ansible-playbook -i inventory/hosts openvpn.yml
```
