data "aws_iam_policy_document" "marketing" {
  statement {
    actions = [
      "s3:PutObject",
      "s3:GetObject",
      "s3:ListBucket",
    ]

    effect = "Allow"

    resources = [
      "${aws_s3_bucket.website.arn}/news/*",
    ]
  }

  statement {
    actions = [
      "s3:GetObject",
    ]

    effect = "Allow"

    resources = [
      "${aws_s3_bucket.website.arn}/*",
    ]
  }
}

data "aws_iam_policy_document" "editors" {
  statement {
    actions = [
      "s3:PutObject",
      "s3:GetObject",
      "s3:ListBucket",
    ]

    effect = "Allow"

    resources = [
      "${aws_s3_bucket.website.arn}/*",
    ]
  }

  statement {
    actions = [
      "s3:GetObject",
    ]

    effect = "Allow"

    resources = [
      "${aws_s3_bucket.website.arn}/*",
    ]
  }
}

data "aws_iam_policy_document" "hr" {
  statement {
    actions = [
      "s3:PutObject",
      "s3:GetObject",
      "s3:ListBucket",
    ]

    effect = "Allow"

    resources = [
      "${aws_s3_bucket.website.arn}/people/*",
    ]
  }

  statement {
    actions = [
      "s3:GetObject",
    ]

    effect = "Allow"

    resources = [
      "${aws_s3_bucket.website.arn}/*",
    ]
  }
}

data "aws_iam_policy_document" "public_policy" {
  statement {
    sid    = "PublicReadGetObject"
    effect = "Allow"
    principals {
      type        = "AWS"
      identifiers = ["*"]
    }
    actions = [
      "s3:GetObject"
    ]
    resources = [
      "arn:aws:s3:::${var.bucket_name}/*"
    ]
  }
}