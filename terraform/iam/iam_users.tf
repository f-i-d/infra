resource "aws_iam_user" "users_readonly" {
  for_each = toset(var.iam_users_readonly)
  name = "${each.value}"
}

resource "aws_iam_user" "users_developer" {
  for_each = toset(var.iam_users_developer)
  name = "${each.value}"
}

resource "aws_iam_user" "users_manager" {
  for_each = toset(var.iam_users_manager)
  name = "${each.value}"
}

resource "aws_iam_user_policy_attachment" "user_policy_attach_readonly" {
  for_each = toset(var.iam_users_readonly)
  user = "${each.value}"
  policy_arn = aws_iam_policy.readonly.arn
}

resource "aws_iam_user_policy_attachment" "user_policy_attach_developer" {
  for_each = toset(var.iam_users_developer)
  user = "${each.value}"
  policy_arn = aws_iam_policy.developer.arn
}

resource "aws_iam_user_policy_attachment" "user_policy_attach_manager" {
  for_each = toset(var.iam_users_manager)
  user = "${each.value}"
  policy_arn = aws_iam_policy.manager.arn
}