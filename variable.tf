variable "key_name" {
  description = "key value pair for this instance"
  default = "firstkeypair"
}
variable "subnet_id" {
  description = "subnet ID for this instance"
  default = "subnet-07b2a8a6efc881d88"
}
variable "instance_ami" {
  default = "ami-02b8269d5e85954ef"
}
variable "instance_type" {
  default = "t2.micro"
}
