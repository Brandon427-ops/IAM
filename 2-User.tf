#This module is to create an IAM user

resource "aws_iam_user" "Brandon" {
  name = "Brandon"
  path = "/system/"

  tags = {
    tag-key = "Location-NewYork"
  }
}

resource "aws_iam_access_key" "lb" {
  user = aws_iam_user.Brandon.name
}

#This module is to assign a user to a group

resource "aws_iam_user_group_membership" "Corvette" {
  user = aws_iam_user.Brandon.name

  groups = [
    aws_iam_group.Corvette.name
  ]
}





