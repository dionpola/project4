resource "aws_lightsail_instance" "custom" {
  name              = "custom"
  availability_zone = "us-east-1b"
  blueprint_id      = "centos_7_1901_01"
  bundle_id         = "nano_1_0"
  user_data         = "sudo yum update -y && sudo yum install unzip wget httpd -y && sudo wget https://github.com/utrains/static-resume/archive/refs/heads/main.zip && sudo unzip main.zip && sudo cp -r static-resume-main/* /var/www/html/ && sudo systemctl start httpd && sudo systemctl enable httpd"
}