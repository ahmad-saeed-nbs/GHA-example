# terragrunt.hcl

terraform {
  source = "../../modules/s3"
}

inputs = {
  buckets = ["ahmeds-example-bucket", "ahmedss-example-bucket", "ahmedsss-example-bucket"]
}
