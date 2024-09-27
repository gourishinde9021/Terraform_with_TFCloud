resource "aws_instance" "web" {
#  count = 3
  ami           = "ami-05c880175794030cd"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}

output "ec2myname" {
  value = aws_instance.web.public_ip
}
