aws_account_name = "samurai"
policy_path = "../../aws/aws1_samurai/iam"

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
    "samurai-test-developer",
    "samurai-jo",
    "samurai-jeff",
    "samurai-romeo",
    "samurai-pilar",
    "samurai-linssen",
    "samurai-shimoda"
]

# <サービス名>-switch-role-managerにスイッチできるユーザー
# trust-policy-<サービス名>-manager.jsonで
# 信頼ポリシーにAssumeRoleを許可されている必要があります
iam_users_manager = [
    "samurai-test-manager",
    "samurai-saturnino"
]