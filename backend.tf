terraform {
 backend "s3" {
 encrypt = true
 bucket = "tb-terraform-remote-state-storage-s3"
 dynamodb_table = "terraform-state-lock-dynamo"
 region = "us-east-1"
 key = "terraform-statefile"
 }
}
