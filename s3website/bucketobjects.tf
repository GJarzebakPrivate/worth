locals {
  website_files = fileset("${path.module}/websitefiles", "**")
}

resource "aws_s3_bucket_object" "website_files" {
  for_each = { for file in local.website_files : file => file }

  bucket       = aws_s3_bucket.website.id
  key          = each.value
  source       = "${path.module}/websitefiles/${each.value}"
  content_type = lookup(var.content_types, split(".", each.value)[1], "text/html")
  etag         = filemd5("${path.module}/websitefiles/${each.value}")
}