# DevOps Bootcamp Final Project 2025

## Project: Trust Me, I'm a DevOps Engineer

This project demonstrates end-to-end DevOps practices including Infrastructure as Code, Configuration Management, Containerization, and Monitoring.

---

## 🌐 Live URLs

| Service | URL |
|---------|-----|
| **Web Application** | [https://web.nazirulhafiz.dev](https://web.nazirulhafiz.dev) |
| **Monitoring (Grafana)** | [https://monitoring.nazirulhafiz.dev](https://monitoring.nazirulhafiz.dev) |
| **GitHub Repository** | [https://github.com/wannazirulhafiz/devops-bootcamp-project](https://github.com/wannazirulhafiz/devops-bootcamp-project) |

---

## 🏗️ Architecture

![Architecture Diagram](https://img.shields.io/badge/AWS-ap--southeast--1-orange)

### Infrastructure Components

| Component | Specification |
|-----------|--------------|
| **VPC** | 10.0.0.0/24 (devops-vpc) |
| **Public Subnet** | 10.0.0.0/25 |
| **Private Subnet** | 10.0.0.128/25 |
| **Web Server** | 10.0.0.5 (Ubuntu 24.04, t3.micro) |
| **Ansible Controller** | 10.0.0.135 (Ubuntu 24.04, t3.micro) |
| **Monitoring Server** | 10.0.0.136 (Ubuntu 24.04, t3.micro) |

---

## 🛠️ Technologies Used

- **Infrastructure as Code**: Terraform
- **Configuration Management**: Ansible
- **Containerization**: Docker
- **Container Registry**: Amazon ECR
- **Monitoring**: Prometheus + Grafana
- **DNS & Security**: Cloudflare (DNS + Tunnel)
- **Cloud Provider**: AWS

---

## 📁 Repository Structure
```
devops-bootcamp-project/
├── terraform/          # Infrastructure as Code
│   ├── provider.tf     # AWS provider configuration
│   ├── vpc.tf          # VPC, subnets, gateways
│   ├── security.tf     # Security groups
│   ├── ec2.tf          # EC2 instances
│   ├── ecr.tf          # Container registry
│   └── outputs.tf      # Output values
├── ansible/            # Configuration Management
│   ├── inventory       # Host inventory
│   ├── install-docker.yml
│   ├── deploy-webapp.yml
│   ├── deploy-node-exporter.yml
│   ├── deploy-prometheus.yml
│   └── deploy-grafana.yml
└── README.md           # Documentation
```

---

## 🚀 Deployment Steps

### 1. Infrastructure Provisioning (Terraform)
```bash
cd terraform
terraform init
terraform plan
terraform apply
```

### 2. Configuration Management (Ansible)
```bash
# Install Docker on all servers
ansible-playbook -i inventory install-docker.yml

# Deploy web application
ansible-playbook -i inventory deploy-webapp.yml

# Deploy monitoring stack
ansible-playbook -i inventory deploy-node-exporter.yml
ansible-playbook -i inventory deploy-prometheus.yml
ansible-playbook -i inventory deploy-grafana.yml
```

---

## 📊 Monitoring

Grafana dashboards display:
- ✅ CPU Usage
- ✅ Memory Usage  
- ✅ Disk Usage

Access monitoring at: [https://monitoring.nazirulhafiz.dev](https://monitoring.nazirulhafiz.dev)

---

## 👨‍💻 Author

**Nazirulhafiz**  
DevOps Bootcamp 2025 - Infratify

---

## 📜 License

This project is part of the Infratify DevOps Bootcamp Final Project 2025.
