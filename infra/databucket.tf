
resource "aws_s3_bucket_versioning" "analyticsbucket" {
  bucket = "analytics-${var.candidate_id}"
  versioning_configuration {
    status = "Enabled"
  }
}
