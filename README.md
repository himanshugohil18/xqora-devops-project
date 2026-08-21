# 🚀 XQORA — Local DevOps Automation Project

> A hands-on, end-to-end DevOps project that demonstrates how to build, test, deploy, monitor, automate, and maintain a containerized application in a **100% local environment**.

[![CI](https://img.shields.io/badge/CI-GitHub_Actions-success)](#-continuous-integration)
[![CD](https://img.shields.io/badge/CD-Self--Hosted_Runner-blue)](#-continuous-deployment)
[![Docker](https://img.shields.io/badge/Container-Docker-2496ED)](#-application--deployment)
[![Monitoring](https://img.shields.io/badge/Monitoring-Prometheus_%2B_Grafana-E6522C)](#-monitoring)
[![Ansible](https://img.shields.io/badge/Automation-Ansible-EE0000)](#-ansible-automation)

---

## 📌 Overview

**XQORA** is a practical local DevOps environment built around a small Flask application. The project focuses on the complete operational lifecycle of an application:

- Build and containerize the application
- Run automated tests through CI
- Automatically deploy locally through CD
- Monitor the environment with Prometheus and Grafana
- Manage logs
- Perform backup and restore operations
- Run health, security, and environment checks
- Automate local configuration using Ansible

The project intentionally stays **local-first**.

> No AWS • No Terraform • No Kubernetes

---

## 🏗️ Architecture

```text
                         ┌──────────────────┐
                         │    Developer     │
                         │    git push      │
                         └────────┬─────────┘
                                  │
                                  ▼
                         ┌──────────────────┐
                         │      GitHub      │
                         │   Repository     │
                         └────────┬─────────┘
                                  │
                    ┌─────────────┴─────────────┐
                    │                           │
                    ▼                           ▼
          ┌──────────────────┐        ┌──────────────────┐
          │   CI Pipeline    │        │   CD Pipeline    │
          │ GitHub Actions   │        │ GitHub Actions   │
          └────────┬─────────┘        └────────┬─────────┘
                   │                           │
                   │                           ▼
                   │                  ┌──────────────────┐
                   │                  │ Self-Hosted      │
                   │                  │ Runner (WSL)     │
                   │                  └────────┬─────────┘
                   │                           │
                   └──────────────┬────────────┘
                                  │
                                  ▼
                         ┌──────────────────┐
                         │  Docker Compose  │
                         └────────┬─────────┘
                                  │
                                  ▼
                         ┌──────────────────┐
                         │ XQORA Flask App  │
                         └────────┬─────────┘
                                  │
          ┌───────────────────────┼────────────────────────┐
          ▼                       ▼                        ▼
 ┌─────────────────┐     ┌─────────────────┐      ┌─────────────────┐
 │   Monitoring    │     │ Logging & Checks│      │ Backup & Restore│
 │ Prometheus      │     │ Health/Security │      │ Shell Automation│
 │ Grafana         │     │ Environment     │      └─────────────────┘
 │ Node Exporter   │     └─────────────────┘
 └─────────────────┘
```

---

## 🛠️ Tech Stack

| Area | Technologies |
|---|---|
| Application | Python, Flask |
| Containerization | Docker |
| Local Deployment | Docker Compose |
| Version Control | Git, GitHub |
| CI | GitHub Actions |
| CD | GitHub Actions + Self-Hosted Runner |
| Configuration Automation | Ansible |
| Monitoring | Prometheus, Grafana, Node Exporter |
| Automation | Bash / Shell Scripts |
| Logging | Custom log generation, rotation & cleanup |
| Backup | Automated backup & restore scripts |
| Environment | Ubuntu on WSL |

---

## 📂 Project Structure

```text
xqora-devops-project/
│
├── .github/
│   └── workflows/
│       ├── ci.yml
│       └── cd.yml
│
├── ansible/
│   ├── inventory.ini
│   └── playbooks/
│       └── setup.yml
│
├── application/
│   ├── src/
│   │   └── app.py
│   ├── tests/
│   │   └── test_app.py
│   ├── Dockerfile
│   ├── docker-compose.yml
│   └── requirements.txt
│
├── automation/
│   └── scripts/
│       ├── deploy.sh
│       ├── health-check.sh
│       ├── security-check.sh
│       ├── service-health-check.sh
│       ├── system-info.sh
│       └── verify-environment.sh
│
├── backups/
│   ├── backup.sh
│   └── restore.sh
│
├── logging/
│   ├── generate-logs.sh
│   ├── rotate-logs.sh
│   └── cleanup-logs.sh
│
├── monitoring/
│   ├── docker-compose.yml
│   └── prometheus.yml
│
├── environment/
│   └── .env.example
│
└── README.md
```

---

# ⚙️ Getting Started

## Prerequisites

Install the following tools on your Ubuntu/WSL environment:

- Git
- Docker
- Docker Compose
- Python 3
- Ansible
- GitHub account and repository access

## Clone the Repository

```bash
git clone https://github.com/himanshugohil18/xqora-devops-project.git
cd xqora-devops-project
```

---

# 🐳 Application & Deployment

The Flask application is containerized with Docker and deployed locally using Docker Compose.

## Start the Application

```bash
cd application
docker compose up -d --build
```

## Check Container Status

```bash
docker compose ps
```

## Health Check

```bash
curl http://localhost:5001/health
```

Expected response:

```json
{"status":"healthy"}
```

### Available Endpoints

| Endpoint | Purpose |
|---|---|
| `/` | Application information |
| `/health` | Health check |
| `/version` | Application version |

---

# 🔄 Continuous Integration

The CI pipeline is implemented using **GitHub Actions**.

Workflow:

```text
.github/workflows/ci.yml
```

The CI process validates the application through:

```text
git push
   │
   ▼
Application Tests
   │
   ▼
Docker Build
   │
   ▼
Verification
   │
   ▼
CI Success ✅
```

---

# 🚀 Continuous Deployment

The project uses a **self-hosted GitHub Actions runner** running on the local Ubuntu/WSL environment.

This allows GitHub Actions to trigger deployment directly on the local machine.

```text
git push
   │
   ▼
GitHub Actions CD
   │
   ▼
Self-Hosted Runner
   │
   ▼
deploy.sh
   │
   ▼
docker compose down
   │
   ▼
docker compose up -d --build
   │
   ▼
Health Check
   │
   ▼
Deployment Successful ✅
```

Deployment script:

```text
automation/scripts/deploy.sh
```

The deployment process:

1. Stops the existing application container.
2. Builds the latest image.
3. Starts the updated application.
4. Waits for the service.
5. Verifies the `/health` endpoint.

---

# 📊 Monitoring

Monitoring is implemented using:

- **Prometheus** — metric collection
- **Grafana** — visualization
- **Node Exporter** — system metrics

Start monitoring services:

```bash
cd monitoring
docker compose up -d
```

Verify running containers:

```bash
docker ps
```

The monitoring stack runs alongside the XQORA application and provides visibility into the local environment.

---

# 📝 Logging

The project includes automation for basic log lifecycle management.

```text
logging/
├── generate-logs.sh
├── rotate-logs.sh
└── cleanup-logs.sh
```

These scripts demonstrate:

- Log generation
- Log rotation
- Old log cleanup

---

# 💾 Backup & Restore

Backup automation:

```bash
./backups/backup.sh
```

Restore automation:

```bash
./backups/restore.sh
```

This demonstrates a simple local backup and recovery workflow.

---

# ❤️ Health, Security & Environment Checks

## Application Health

```bash
./automation/scripts/health-check.sh
```

## Security Baseline Check

```bash
./automation/scripts/security-check.sh
```

## Service Health

```bash
./automation/scripts/service-health-check.sh
```

## Environment Verification

```bash
./automation/scripts/verify-environment.sh
```

## System Information

```bash
./automation/scripts/system-info.sh
```

---

# 🤖 Ansible Automation

Ansible is used to automate and verify local environment configuration.

### Inventory

```text
ansible/inventory.ini
```

### Test Connectivity

```bash
ansible -i ansible/inventory.ini xqora_local -m ping
```

Expected result:

```text
localhost | SUCCESS => {
    "changed": false,
    "ping": "pong"
}
```

### Run the Playbook

```bash
ansible-playbook -i ansible/inventory.ini ansible/playbooks/setup.yml
```

---

# 🔍 End-to-End Verification

Run the following checks to verify the project:

```bash
# Application
curl http://localhost:5001/health

# Containers
docker ps

# Automation checks
./automation/scripts/health-check.sh
./automation/scripts/security-check.sh
./automation/scripts/verify-environment.sh

# Ansible
ansible -i ansible/inventory.ini xqora_local -m ping
```

A successful environment should confirm:

```text
Application Health       ✅
Docker Containers        ✅
CI Pipeline              ✅
Local CD Pipeline        ✅
Monitoring Stack         ✅
Health Checks            ✅
Security Checks          ✅
Environment Verification ✅
Ansible Automation       ✅
Backup & Restore         ✅
Logging Automation       ✅
```

---

# 🎯 What This Project Demonstrates

This project demonstrates practical DevOps concepts including:

- Containerization with Docker
- Multi-container management with Docker Compose
- Git-based workflows
- CI with GitHub Actions
- Local CD with a self-hosted runner
- Automated application deployment
- Application health verification
- Monitoring with Prometheus and Grafana
- System metrics with Node Exporter
- Logging and log lifecycle management
- Backup and restore automation
- Security baseline checks
- Environment validation
- Infrastructure/configuration automation with Ansible
- Bash scripting for operational automation

---

# 🚧 Future Improvements

Possible next improvements:

- Automated rollback strategy
- Alertmanager integration
- Container image security scanning
- Centralized logging
- Advanced Grafana dashboards
- Kubernetes deployment
- AWS deployment
- Terraform-based infrastructure provisioning

---

## 👨‍💻 Author

**Himanshu Gohil**  
DevOps & Cloud Enthusiast

---

⭐ If you found this project useful, consider giving the repository a star.
