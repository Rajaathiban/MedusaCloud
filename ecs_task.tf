resource "aws_ecs_task_definition" "medusa_task" {
  family                   = "medusa-task"
  requires_compatibilities = ["FARGATE"]
  cpu                      = 512
  memory                   = 1024
  network_mode             = "awsvpc"
  container_definitions    = <<EOF
[
  {
    "name": "medusa-server",
    "image": "medusajs/medusa",
    "essential": true,
    "portMappings": [
      {
        "containerPort": 9000,
        "hostPort": 9000
      }
    ]
  }
]
EOF
}
