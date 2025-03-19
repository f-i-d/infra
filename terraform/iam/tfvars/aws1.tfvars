aws_account_name = "samurai"
policy_path = "../../aws/aws1_samurai/iam"

# <サービス名>-switch-role-readonlyにスイッチできるユーザー
# trust-policy-<サービス名>-readonly.jsonで
# 信頼ポリシーにAssumeRoleを許可されている必要があります
iam_users_readonly = [
]

# <サービス名>-switch-role-developerにスイッチできるユーザー
# trust-policy-<サービス名>-developer.jsonで
# 信頼ポリシーにAssumeRoleを許可されている必要があります
iam_users_developer = [
]

# <サービス名>-switch-role-managerにスイッチできるユーザー
# trust-policy-<サービス名>-manager.jsonで
# 信頼ポリシーにAssumeRoleを許可されている必要があります
iam_users_manager = [
]