output "out" {
  value = local_file.file3.filename
  # value = local_file.file3.content
}

output "print-data-from-list" {
  value = [for k in var.content2 :k]
}

output "print-data-from-foreach" {
  value = {for k, v in var.var1 :k=>v}
}