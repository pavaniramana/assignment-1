module "user_module" {
  source = "../../iamuser&group"
  
  user_names = ["Pavani","Mamatha","Jyothi"]
  
  group_name = var.group_details
}

module "bucket-module" {
  source = "../../s3"
  buck-name = var.buck
}

module "my_aws_instance" {
  source    = "../../ec2"
  ami1      = "ami-090fa75af13c156b4"
  demo_size = 30
}