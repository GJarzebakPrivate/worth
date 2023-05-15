
variable "bucket_name" {
  type        = string
  description = "The name of the bucket"
}

variable "content_types" {
  type = map(string)
  default = {
    "html"  = "text/html"
    "css"   = "text/css"
    "js"    = "application/javascript"
    "jpg"   = "image/jpeg"
    "jpeg"  = "image/jpeg"
    "png"   = "image/png"
    "gif"   = "image/gif"
    "ico"   = "image/x-icon"
    "svg"   = "image/svg+xml"
    "woff"  = "font/woff"
    "woff2" = "font/woff2"
  }
}

variable "iam_users" {
  type = map(string)
}

# Define the list of IAM group names
variable "groups" {
  type = map(map(list(string)))
}