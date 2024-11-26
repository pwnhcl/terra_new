resource "aws_instance" "ec2_instance" {
  count = 4
  ami           = "ami-0dee22c13ea7a9a67"
  instance_type = "t2.micro"

  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  key_name               = aws_key_pair.deployer.id

  user_data = <<-EOF
              #!/bin/bash
              # Update packages
              sudo apt update -y
              # Install Nginx
              sudo apt install nginx -y
              # Start and enable Nginx
              sudo systemctl start nginx
              sudo systemctl enable nginx
              echo "Welcome to Instance IP $(hostname)" | sudo tee /var/www/html/index.html > /dev/null
              EOF


  tags = {
    Name = "Server-${count.index + 1}"  # Each instance gets a unique name
  }
}