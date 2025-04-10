resource "aws_instance" "app" {
  count                     = var.instance_count
  ami                       = "ami-0c2b8ca1dad447f8a"  # Amazon Linux 2
  instance_type             = "t3.medium"
  subnet_id                 = var.subnet_id
  vpc_security_group_ids    = [var.security_group_id]
  associate_public_ip_address = true
  key_name                  = var.key_name  

  user_data = <<-EOF
    #!/bin/bash
    yum update -y
    amazon-linux-extras install docker -y
    service docker start
    usermod -a -G docker ec2-user
    yum install git -y

    # Clone the repo and run the app
    git clone https://github.com/Amalghazala/CloudDevOpsProject.git /home/ec2-user/app
    cd /home/ec2-user/app/docker
    docker build -t myapp .
    docker run -d -p 80:8081 myapp
  EOF

  tags = {
    Name = "AppInstance-${count.index}"
  }
}