module "security_group_ssh" {
  source = "../../modules/security-group"
  env_name = "development"
  description = "SG for ssh access"
  ingress_rules = [
    {
      from_port = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      from_port = 30
      to_port     = 30
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }]
}

module "security_group_http" {
  source = "../../modules/security-group"
  env_name = "development"
  description = "SG for http"
  ingress_rules = [
    {
      from_port = 80
      to_port = 80
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
  ]
}