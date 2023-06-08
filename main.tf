resource "aws_launch_configuration" "web_server_lc" {
  image_id        = "ami-053b0d53c279acc90"
  instance_type  = "t2.micro"
  security_groups = [aws_security_group.web_server.id]

user_data = filebase64("userdata.sh")
}
resource "aws_elb" "web_server_lb" {
  name               = "web-server-lb"
  security_groups    = [aws_security_group.web_server.id]
  subnets            = [aws_subnet.public_subnet_1a.id, aws_subnet.public_subnet_1b.id]
   listener {
    instance_port     = 80
    instance_protocol = "HTTP"
    lb_port           = 80
    lb_protocol       = "HTTP"
  }
  health_check {
    target              = "HTTP:80/"
    interval            = 30
    timeout             = 5
    unhealthy_threshold = 2
    healthy_threshold   = 2
  }
}


resource "aws_autoscaling_group" "web_server_asg" {
  name                 = "web-server-asg"
  launch_configuration = aws_launch_configuration.web_server_lc.id
  min_size             = 1
  max_size             = 3
  desired_capacity     = 2
  health_check_type    = "EC2"
  load_balancers       = [aws_elb.web_server_lb.id]
  vpc_zone_identifier  = [aws_subnet.public_subnet_1a.id, aws_subnet.public_subnet_1b.id]
}
