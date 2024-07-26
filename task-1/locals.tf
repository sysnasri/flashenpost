variable "tags" {
  description = "Common tags for Asure resources!"
  type        = map(string)
  default = {
    department = "SRE"
  }
}
locals {
  tags = merge(var.tags)
}
