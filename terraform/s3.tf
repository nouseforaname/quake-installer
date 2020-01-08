resource "aws_s3_bucket" "env-state-bucket" {
  bucket = "${var.TLD}-state"
  acl    = "private"

  tags = {
    Name        = "${var.TLD}-state"
    Environment = "${var.TLD}-state"
  }
}


