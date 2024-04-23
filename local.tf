# resouce = Block
# local = Provider
# file = Provider Type
# example = Rource's name
resource "local_file" "example" {
  filename = "example.txt"
  content = var.file_content
}

variable "file_content" {
  type = string
  # default = "Hello World"
  # description = "This is the variable description"
}