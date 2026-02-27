resource aws_s3_bucket my_bucket {
	bucket = "${var.env}-terra-5126-bucket"

    tags = {
        Name = "${var.env}-terra-5126-bucket"
        Environment = var.env
    }
}
