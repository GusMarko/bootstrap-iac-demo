resource "aws_s3_bucket" "state-bucket-demo" {
  bucket = var.statebucketname
}

resource "aws_s3_bucket_public_access_block" "state-bucket-nopublic-demo" {
  bucket                  = aws_s3_bucket.state-bucket-demo.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

