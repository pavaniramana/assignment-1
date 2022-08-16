resource "aws_iam_user" "pavani-users" {
  count = length(var.user_names)
  name = var.user_names[count.index]

  tags = {
    Name = "pavani-user-details"
  }
}

resource "aws_iam_group" "pavani-group" {
  name = var.group_name
}

resource "aws_iam_group_membership" "team" {
  name = "tf-pavani-group-membership"

  users = [for i in aws_iam_user.pavani-users : i.name]

  group =aws_iam_group.pavani-group.name
}