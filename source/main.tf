module "s3website" {
  source = "../s3website"

  bucket_name = var.bucket_name
  iam_users   = var.iam_users
  groups      = var.groups
}