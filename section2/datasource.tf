/*
data "aws_ami" "amz_ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}
resource "aws_instance" "web" {
  ami           = data.aws_ami.amz_ami.id
  instance_type = "t2.micro"
  

  tags = {
    Name = "HelloWorld"
  }
}
*/