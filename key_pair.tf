resource "aws_key_pair" "deployer" {
  key_name   = "terra-key"
  public_key = file("${path.module}/id_rsa.pub")
}
