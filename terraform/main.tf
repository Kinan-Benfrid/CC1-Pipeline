resource "aws_instance" "ec2_vm" {
  ami           = "ami-070b208e993b59cea"
  instance_type = "t2.micro"
  key_name      = "mykey"
  tags = {
    Name = "ExempleInstanceEC2Linux"
    Owner = "PhCurmin"
  }
  
  vpc_security_group_ids = ["${aws_security_group.default.id}"] 
}

# Default ec2 user is "ec2-user"
