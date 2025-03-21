resource "aws_iam_role_policy_attachment" "switch_role_readonly_policy" {
  role = aws_iam_role.switch_role_readonly.name
  policy_arn = aws_iam_policy.switch_role_readonly.arn
}

resource "aws_iam_role_policy_attachment" "switch_role_developer_policy" {
  role = aws_iam_role.switch_role_developer.name
  policy_arn = aws_iam_policy.switch_role_developer.arn
}

resource "aws_iam_role_policy_attachment" "switch_role_manager_policy" {
  role = aws_iam_role.switch_role_manager.name
  policy_arn = aws_iam_policy.switch_role_manager.arn
}