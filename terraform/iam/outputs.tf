output "iam_users" {
  value = concat(
    [for user in values(aws_iam_user.users_readonly) : user.name],
    [for user in values(aws_iam_user.users_developer) : user.name],
    [for user in values(aws_iam_user.users_manager) : user.name]
  )
}

output "iam_roles" {
  value = [
    aws_iam_role.switch_role_readonly.name,
    aws_iam_role.switch_role_developer.name,
    aws_iam_role.switch_role_manager.name
  ]
}

output "iam_policies" {
  value = [
    aws_iam_policy.readonly.arn,
    aws_iam_policy.developer.arn,
    aws_iam_policy.manager.arn,
    aws_iam_policy.switch_role_readonly.arn,
    aws_iam_policy.switch_role_developer.arn,
    aws_iam_policy.switch_role_manager.arn
  ]
}