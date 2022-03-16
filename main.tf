resource "local_file" "demo-file" {
  filename = var.name
  content  = var.content
}

resource "local_file" "demo-file2" {
 count = 5
  filename = var.name2["name1"]
  content  = var.content2[0]
}

resource "local_file" "for_each_loop" {
  for_each = var.var1
  filename = each.key
}

resource "local_file" "file3" {
  
  filename = var.name3
  content  = data.local_file.data_for_content.content  // will fetch data from data.jsoin file
}

data "local_file" "data_for_content"{
  filename = "data.json"
}


# Way 1 of declaring vars

# variable "name" {
#     type = string
#     description = "Put file name here"
#     #default = "File1"
# }

# Way 2 of declaring vars
# terraform plan -var "name=FIle3"
# terraform apply -var "name=File4" -auto-approve

# Way 3 of declaring vars
# from environmental variables 
# eg. export TF_VAR_FILENAME = "root/pets.txt"
# export TF_VAR_content = "Value"


# Way 4 of declaring vars
# Variable.tf file and terraform.tfvars file
# terraform plan -var-file terraform.tfvars     
# terraform apply -var-file terraform.tfvars     

