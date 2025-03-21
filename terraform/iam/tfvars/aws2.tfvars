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
  "motenasu-kim",
  "motenasu-enn",
  "motenasu-vincent",
  "motenasu-maria",
  "motenasu-calvin",
  "motenasu-alvin",
  "motenasu-ann",
  "motenasu-ianna",
  "motenasu-rose",
  "motenasu-saturnino",
  "motenasu-shena",
  "motenasu-michael",
  "motenasu-rjay",
  "motenasu-sophia"
]

# <サービス名>-switch-role-managerにスイッチできるユーザー
# trust-policy-<サービス名>-manager.jsonで
# 信頼ポリシーにAssumeRoleを許可されている必要があります
iam_users_manager = [
  "motenasu-odate"
]