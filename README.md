# terraform_import


Import resource in the remote state file which is managed on gcs bucket

Take reference from provider.tf
Run `terraform init` to initialize the backend
Create a service account from console so that it is not visible of terraform state file
Create main.tf with just a body:-
      resource "google_service_account" "new_relic_account" {
          # (resource arguments)
      }

Run terraform import command to reflect the same on state file `terraform import google_service_account.new_relic_account terracustom@testing-417202.iam.gserviceaccount.com`
Once state file is updated run the terraform add the required/mandatory parametrs in the block before running the `terraform plan` command again
      resource "google_service_account" "new_relic_account" {
           account_id   = "terracustom"
            # (resource arguments)
          }
