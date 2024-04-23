# resouce = Block
# local = Provider
# file = Provider Type
# example = Rource's name
resource "local_file" "example" {
  filename = "example.txt"
  content = "Full Cycle"
}