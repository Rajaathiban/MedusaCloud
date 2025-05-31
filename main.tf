resource "aws_vpc" "medusa_vpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_ecs_cluster" "medusa_cluster" {
  name = "medusa-cluster"
}
