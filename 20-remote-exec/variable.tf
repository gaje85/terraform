variable "region" { 
  default = "us-east-2" 
}

locals { 
  default_name = "${join("-", tolist([terraform.workspace, "example"]))}"
}


variable "instance_type" { 
 type = map 
 default = { 
   default = "t2.nano"
   dev     = "t2.micro"
   prod    = "t2.large"
 }
}

variable "instance_count" { 
  type = map 
  default = { 
   default = "1"
   dev = "2"
   prod = "3"
  }
}

variable "key_name" { 
  default = "terraform"
}

variable "pvt_key" { 
  default = "/root/terraform.pem"
}

variable "sg_id" { 
  default = "sg-00d60db77cf13e360"
}
