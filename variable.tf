variable "content" {
  type        = string
  description = "Content of file here"
}
variable "name" {
  type        = string
  description = "Put file name here"
  #default = "File1"
}

variable "content2" {
  type        = list(string)
}
variable "name2" {
  type        = map(any)
}

variable "name3" {
  type        = string
  description = "Put file name here"
}

variable "var1" {
  type        = map(any)
}
