# resource "aws_vpc" "my_vpc" {
#   cidr_block = "172.16.0.0/16"

#   tags = {
#     Name = "tf-example"
#   }
# }

# resource "aws_subnet" "my_subnet" {
#   vpc_id            = aws_vpc.my_vpc.id
#   cidr_block        = "172.16.10.0/24"
#   availability_zone = "ap-south-1a"
#   map_public_ip_on_launch = true

#   tags = {
#     Name = "tf-example"
#   }
# }



