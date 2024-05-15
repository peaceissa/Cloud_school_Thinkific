variable "s3_bucket_names" {
  description = "names of s3 bucket"
  type = list(string)
  default = ["AdventureTech", "NatureEscape","CodeCarnival"]
}
