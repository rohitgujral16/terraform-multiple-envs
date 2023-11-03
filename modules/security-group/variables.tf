variable vpc_id {
  default = "vpc-0329d7938bd5f2607"
}

variable env_name {
  description = "Name of the env"
}
variable name {
  description = "name"
}

variable description {
  description = "The description of the security group"
}

variable ingress_rules {
  description = "List of ingress rules"
  type = list(object({
    from_port        = number
    to_port          = number
    protocol         = string
    cidr_blocks      = list(string)
  }))
}