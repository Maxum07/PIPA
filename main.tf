provider "aws" {
  region = "us-east-1"
}

resource "aws_cloudformation_stack" "example" {
  name         = "MyStack"
  template_body = <<TEMPLATE
{
  "Resources": {
    "S3Bucket": {
      "Type": "AWS::S3::Bucket"
    }
  }
}
TEMPLATE
}
