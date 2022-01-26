/* s
variable "names" {
  type = list
  default = ["lb1","lb2","lb3"]
}

resource "aws_iam_user" "lb" {
  name = var.names[count.index]
  path = "/system/"
  count = 3
}
*/