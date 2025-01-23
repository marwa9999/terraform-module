resource "aws_instance" "ec2_instance" {
  count                  = var.instance_count
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.security_group_ids
  associate_public_ip_address = true
  key_name               = var.key_name

  user_data = var.user_data

  private_ip = var.private_ip != null ? var.private_ip : null

  tags = merge(
    {
      Name = var.name_prefix != null ? "${var.name_prefix}-${count.index + 1}" : "EC2-${count.index + 1}"
    },
    var.additional_tags
  )
}
