/*
resource "aws_instance" "myec2" {
  ami           = "ami-001089eb624938d9f"
  instance_type = "t2.micro"
  key_name      = "6dtechawskey"
  vpc_security_group_ids = [aws_security_group.remoteexec.id]

connection {
  type        = "ssh"
  user        = "ec2-user"
  private_key = file("./6dtechawskey.cer")
  host        = self.public_ip
}

provisioner "remote-exec" {
  inline = [
    "sudo amazon-linux-extras install nginx1 -y",
    "sudo systemctl start nginx",
  ]
}
}

resource "aws_security_group" "remoteexec" {
  name        = "remoteexec"
  description = "Allow TLS inbound traffic"

  ingress {
    description      = "remote"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 65535
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}
*/