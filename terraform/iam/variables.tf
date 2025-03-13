variable "aws_account_name" {
  type = string
}

variable "policy_path" {
  type = string
}

variable "iam_users_readonly" {
  type = list(string)
}

variable "iam_users_developer" {
  type = list(string)
}

variable "iam_users_manager" {
  type = list(string)
}