resource "aws_instance" "flask_app" {
    ami = var.instance_ami  
    instance_type = var.instance_type
    key_name = var.key_name
    subnet_id = var.subnet_id
    
user_data = <<-EOF
                #!/bin/bash
                sudo apt update -y
                sudo apt install nginx -y
                sudo systemctl start nginx
                sudo systemctl enable nginx
            EOF             

    tags = {
        Name = "try userdata"
    }
}
