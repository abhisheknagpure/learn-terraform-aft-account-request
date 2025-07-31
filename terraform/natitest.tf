module "natitest" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "netanele@sentinelone.com"
    AccountName               = "nati-test"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "abhishek.nagpure@sentinelone.com"
    SSOUserFirstName          = "abhishek"
    SSOUserLastName           = "nagpure"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "abhishek nagpure"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
