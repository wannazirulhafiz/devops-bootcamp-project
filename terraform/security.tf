# Public Security Group for Web Server
resource "aws_security_group" "public_sg" {
  name        = "devops-public-sg"
  description = "Security group for web server"
  vpc_id      = aws_vpc.devops_vpc.id

  # Port 80: Allow from any IP
  ingress {
    description = "HTTP from anywhere"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Port 9100: Allow from Monitoring Server IP (for Prometheus Node Exporter)
  ingress {
    description = "Node Exporter from Monitoring Server"
    from_port   = 9100
    to_port     = 9100
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.136/32"]
  }

  # Port 22: Allow from VPC subnet only
  ingress {
    description = "SSH from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/24"]
  }

  egress {
    description = "Allow all outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "devops-public-sg"
  }
}

# Private Security Group for Ansible Controller & Monitoring Server
resource "aws_security_group" "private_sg" {
  name        = "devops-private-sg"
  description = "Security group for Ansible and Monitoring servers"
  vpc_id      = aws_vpc.devops_vpc.id

  # Port 22: Allow from VPC subnet only
  ingress {
    description = "SSH from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/24"]
  }

  egress {
    description = "Allow all outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "devops-private-sg"
  }
}
