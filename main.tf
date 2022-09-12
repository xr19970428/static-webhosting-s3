provider "aws" {
  region     = "us-east-1"
  access_key = "ABC123"
  secret_key = "dEf456"
}
 
provider "github" {
  token = "xyz890"
  owner = "some-owner"
}
 
data "github_repository_file" "my_file" {
  provider   = github
  repository = "my-repository"
  file       = "my_file.py"
}
 
resource "aws_s3_object" "my_file_on_s3" {
  bucket  = "my-bucket"
  key     = "my_filename_on_s3"
  content = data.github_repository_file.my_file.content
}
