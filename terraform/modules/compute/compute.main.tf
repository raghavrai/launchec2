data "aws_ami" "testapp_instance_ami" {
  most_recent                  = true
  owners                       = ["amazon"]
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-????.??.?.????????-x86_64-ebs"]
  }
}

data "aws_subnets" "subnets" {
  filter {
    name   = "vpc-id"
    values = [var.vpc_id]
  }
}

resource "aws_instance" "testapp_instance" {
  ami                         = data.aws_ami.testapp_instance_ami.id
  instance_type               = var.instance_type
  vpc_security_group_ids      = [var.security_group]
  subnet_id                   = element(data.aws_subnets.subnets.ids, 0)
  associate_public_ip_address = true
  tags                        = {name = "testapp"}

  # block storage details
  root_block_device  {
    volume_size               = 30
    volume_type               = "standard"
    delete_on_termination     = false
  }
}