
variable "bucket_name" {
  type        = string
  description = "The name of the bucket without the www. prefix. Normally domain_name."
}

variable "iam_users" {
  type = map(string)
}

# Define the list of IAM group names
variable "groups" {
  type = map(map(list(string)))
}