# Jim; this just fails ... commented it out ! We need to figure this out later, starting new task instead...
# What?!?!?!
resource "aws_s3_bucket" "analyticsbucket" {
  bucket = "analytics-${var.candidate_id}"
  versioning = {
    status = true
  }
}
