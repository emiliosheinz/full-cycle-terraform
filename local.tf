# resouce = Block
# local = Provider
# file = Provider Type
# example = Rource's name
resource "local_file" "example" {
  filename = "example.txt"
  content = var.file_content
}

data "local_file" "example_content" {
  filename = "example.txt"
}

variable "file_content" {
  type = string
  default = "Hello World"
  # description = "This is the variable description"
}

output "file_id" {
  value = resource.local_file.example.id
}