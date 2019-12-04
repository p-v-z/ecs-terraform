# Set up CloudWatch group and log stream and retain logs for 30 days
resource "aws_cloudwatch_log_group" "ip_log_group" {
  name              = "/ecs/ip-app"
  retention_in_days = 30

  tags = {
    Name = "ip-log-group"
  }
}

resource "aws_cloudwatch_log_stream" "ip_log_stream" {
  name           = "ip-log-stream"
  log_group_name = aws_cloudwatch_log_group.ip_log_group.name
}