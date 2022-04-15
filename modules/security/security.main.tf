resource "aws_security_group" "ec2_security_group" {
  name        = "${terraform.workspace}/${var.app_name}/security/ec2_security_group"
  description = "Control access to the ec2 instance"
  vpc_id      = var.vpc_id
  
  ingress {
    protocol        = "tcp"
    from_port       = 22
    to_port         = 22
    cidr_blocks     = [var.allowed_cidr_block]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}
