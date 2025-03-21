resource "aws_iam_policy" "readonly" {
  name = "${var.aws_account_name}-policy-readonly"
  policy = file("${var.policy_path}/policies/${var.aws_account_name}-readonly.json")
}

resource "aws_iam_policy" "developer" {
  name = "${var.aws_account_name}-policy-developer"
  policy = file("${var.policy_path}/policies/${var.aws_account_name}-developer.json")
}

resource "aws_iam_policy" "manager" {
  name = "${var.aws_account_name}-policy-manager"
  policy = file("${var.policy_path}/policies/${var.aws_account_name}-manager.json")
}

resource "aws_iam_policy" "switch_role_readonly" {
  name = "${var.aws_account_name}-policy-switch-role-readonly"
  policy = file("${var.policy_path}/policies/switch-role-policy-${var.aws_account_name}-readonly.json")
}

resource "aws_iam_policy" "switch_role_developer" {
  name = "${var.aws_account_name}-policy-switch-role-developer"
  policy = file("${var.policy_path}/policies/switch-role-policy-${var.aws_account_name}-developer.json")
}

resource "aws_iam_policy" "switch_role_manager" {
  name = "${var.aws_account_name}-policy-switch-role-manager"
  policy = file("${var.policy_path}/policies/switch-role-policy-${var.aws_account_name}-manager.json")
}