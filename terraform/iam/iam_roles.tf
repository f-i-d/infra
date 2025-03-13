resource "aws_iam_role" "switch_role_readonly" {
  name = "${var.aws_account_name}-switch-role-readonly"
  assume_role_policy = file("${var.policy_path}/roles/trust-policy-${var.aws_account_name}-readonly.json")
}

resource "aws_iam_role" "switch_role_developer" {
  name = "${var.aws_account_name}-switch-role-developer"
  assume_role_policy = file("${var.policy_path}/roles/trust-policy-${var.aws_account_name}-developer.json")
}

resource "aws_iam_role" "switch_role_manager" {
  name = "${var.aws_account_name}-switch-role-manager"
  assume_role_policy = file("${var.policy_path}/roles/trust-policy-${var.aws_account_name}-manager.json")
}