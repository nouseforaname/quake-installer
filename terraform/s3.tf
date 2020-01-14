resource "aws_s3_bucket" "env-state-bucket" {
  bucket = "${var.TLD}-state"
  acl    = "private"

  tags = {
    Name        = "${var.TLD}-state"
    Environment = "${var.TLD}-state"
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = aws_kms_key.kops_state.arn
        sse_algorithm     = "aws:kms"
      }
    }
  }
}

resource "aws_kms_key" "kops_state" {
  description             = "Kops State Encryption Key for ${var.TLD}"
  deletion_window_in_days = 7
}
