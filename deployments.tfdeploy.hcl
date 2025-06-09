identity_token "aws" {
  audience = ["aws.workload.identity"]
}

deployment "test-deployment" {
  # import = "true" # required for non vcs backed stacks 
  inputs = {
    region                   = "us-west-2"
    s3_bucket_name           = "stacks-sujay-test-01-project-no-vcs-stacks"
    s3_bucket_acl            = "private"
    control_object_ownership = true
    s3_bucket_versioning = {
      enabled = true
    }
    tags = {
      "HcpTerraformProject"      = "project-no-vcs-stacks"
      "HcpTerraformStacks"       = "no-vcs-stack"
      "HcpTerraformOrganization" = "sujay-test-01"
      "ManagedBy"                = "HCP Terraform"
      "CanDelete"                = "true"
    }
    identity_token = identity_token.aws.jwt
    role_arn       = "arn:aws:iam::668081019392:role/stacks-sujay-test-01-project-no-vcs-stacks"
  }
}
