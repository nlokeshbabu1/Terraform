terraform {
  backend "s3" {
    bucket = "test-aws-terraform-aws"
    key = "path/to/store"
    region = "ap-soth-1"
    encrypt        = true
    use_lockfile = true
  }
}
