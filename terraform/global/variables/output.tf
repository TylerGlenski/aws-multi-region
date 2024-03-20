output "aws_region" {
  value = "us-east-1"
}

### not required for this scope however good to think about ##
output "internal_domain" {
  value = ""
}

output "external_domain" {
  value = ""
}
## ##

# role for apps and services
output "iam_profile_deployed" {
  value = "deployed"
}

# role for CI/CD machines
output "iam_profile_builder" {
  value = "builder"
}

output "internal_cidr_blocks" {
  value = "10.0.0.0/8"
}

output "uswest_cidr_prefix" {
  value = "10.2"
}

output "useast_cidr_prefix" {
  value = "10.3"
}

output "euwest_cidr_prefix" {
  value = "10.4"
}

output "ubuntu20_ami" {
  value = "ami-0cd59ecaf368e5ccf"
}


###### Required vars fill these in ######
output "company_name" {
  value = "supercoolcompany"
}

# output "vpc_s3_bucket_prefix" {
#   value = "kyve-"
# }

output "aws_keypair_name" {
  value = "aws-low-latency"
}

output "aws_account_number" {
  value = "590183980163"
}

