resource "aws_instance" "pavani_ec2_instance" {
  ami           = var.ami1
  instance_type = "t2.micro"

  tags = {
    Name = "Demo training"
  }
}



# Optional resource
resource "aws_ebs_volume" "pavani_ec2_volume" {
  count = var.check_status ? 1:0
  availability_zone = "us-east-1a"
  size              = var.demo_size

  tags = {
    Name = "HelloWorld"
  }
}