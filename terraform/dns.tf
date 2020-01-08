#hosted zone
resource "aws_route53_zone" "quake" {
  name         = "${var.TLD}."
}

