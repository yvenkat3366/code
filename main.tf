provider "aws" {
  region = "ap-southeast-2"  # Specify your region
}

module "ec2_instance" {
  source        = "./modules/ec2_instance"    # Path to the module
  ami           = "ami-0f71013b2c8bd2c29"     # Replace with a valid AMI ID in your region
  instance_type = "t2.micro"
  key_name      = "awstestkey"        # Replace with your key pair
  instance_name = "venkat"
}

output "instance_id" {
  value = module.ec2_instance.instance_id
}

output "public_ip" {
  value = module.ec2_instance.public_ip
}

output "public_dns" {
  value = module.ec2_instance.public_dns
}
