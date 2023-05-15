locals{
  bucket_policies = {
  marketing = data.aws_iam_policy_document.marketing
  editors   = data.aws_iam_policy_document.editors
  hr        = data.aws_iam_policy_document.hr
}
}

resource "aws_iam_user" "iam_users" {
  for_each = var.iam_users

  name = each.value
}

module "group" {
  for_each = { for name, config in var.groups : name => config }

  source = "./groups"

  iam_group_name     = each.key
  policy_name        = "${each.key}_group_policy"
  policy_description = "Policy for ${each.key} group"
  members            = each.value["users"]
  policy             = local.bucket_policies[each.key].json
}
