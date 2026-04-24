data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

resource "aws_instance" "demo" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = var.instance_type
  key_name      = var.key_name

  root_block_device {
    # Must be >= snapshot size (8 GB for Amazon Linux 2)
    volume_size = max(var.volume_size, 8)
    volume_type = "gp2"
  }

  tags = {
    Name = var.instance_name
  }
}

