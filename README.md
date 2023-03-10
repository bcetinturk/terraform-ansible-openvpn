
### Terraform Setup

```
az login
az account subscription list
az ad sp create-for-rbac --name <principal_name> --role Contributor --scopes /subscriptions/<subscription_id>
```