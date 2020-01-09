#/*
resource "aws_acm_certificate" "cert" {
  domain_name       = "${var.CLUSTER_NAME}.${var.TLD}"
  validation_method = "DNS"
  subject_alternative_names = [
    "*.${var.CLUSTER_NAME}.${var.TLD}"
  ]
  tags = {
    Environment = "${var.TLD}"
  }

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_route53_record" "cert_validation" {
  name    = aws_acm_certificate.cert.domain_validation_options.0.resource_record_name
  type    = aws_acm_certificate.cert.domain_validation_options.0.resource_record_type
  zone_id = aws_route53_zone.quake.id
  records = ["${aws_acm_certificate.cert.domain_validation_options.0.resource_record_value}"]
  ttl     = 60
}
#*/
