aws_account_name = "motenasu"
policy_path = "../../aws/aws2_motenasu/iam"

# <サービス名>-switch-role-readonlyにスイッチできるユーザー
# trust-policy-<サービス名>-readonly.jsonで
# 信頼ポリシーにAssumeRoleを許可されている必要があります
iam_users_readonly = [
  "test-readonly-do-not-delete"
]

# <サービス名>-switch-role-developerにスイッチできるユーザー
# trust-policy-<サービス名>-developer.jsonで
# 信頼ポリシーにAssumeRoleを許可されている必要があります
iam_users_developer = [
  "test-developer-do-not-delete"
]

# <サービス名>-switch-role-managerにスイッチできるユーザー
# trust-policy-<サービス名>-manager.jsonで
# 信頼ポリシーにAssumeRoleを許可されている必要があります
iam_users_manager = [
  "test-manager-do-not-delete"
]