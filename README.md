
### Terraform Setup

```
az login
az account subscription list
az ad sp create-for-rbac --name <principal_name> --role Contributor --scopes /subscriptions/<subscription_id>
```

### Run Terraform

```
terraform plan -out main.tfplan
terraform apply main.tfplan
```

### Output SSH Key

```
terraform output -raw tls_private_key > id_rsa
chmod 0400 id_rsa
```
