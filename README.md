A simple web server terraform module for enabling blue-green deployments in AWS using terraform.

####Usage
```
module "web_server_a" {
  source = "git@github.com:julialamenza/web-server"

  app_version = "a"
  elb_sg_id = aws_security_group.elb.id
  default_sg_id = aws_security_group.default.id
  default_subnet_id = aws_subnet.default.id
  key_id = aws_key_pair.auth.id
  aws_region = var.aws_region
}

output "web_server_a_address" {
  value = module.web_server_a.address
}

output "web_server_a_zone_id" {
  value = module.web_server_a.zone_id
}

```


####Outputs


| Name      | Description | 
|    :----:   |    :----:   |
| address      | This is the DNS address on the load balancer managing traffic to this deployment  |
| zone_id   | This is the hosted zone Id for the load balancer  |