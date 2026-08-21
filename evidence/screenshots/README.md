# XQORA DevOps Project - Execution Evidence

This directory contains execution evidence and screenshots demonstrating the successful implementation, automation, deployment, monitoring, security checks, logging, backup, restoration, and environment verification of the XQORA DevOps project.

---

# Evidence Overview

| No. | Screenshot | Description |
|---|---|---|
| 01 | Project Structure | Complete project structure and Git repository status |
| 02 | GitHub Actions CI | Successful Continuous Integration workflow execution |
| 03 | GitHub Actions CD | Successful Continuous Deployment workflow execution |
| 04 | Self-Hosted Runner | Self-hosted GitHub Actions runner configuration and availability |
| 05 | Docker Containers | Running application and supporting Docker containers |
| 06 | Application Health | Successful application health check |
| 07 | Prometheus Target | Application target successfully discovered by Prometheus |
| 08 | Grafana Dashboard | Application and infrastructure monitoring dashboard |
| 09 | Health Check Automation | Automated health check script execution |
| 10 | Security Check | Automated security verification execution |
| 11 | Ansible Automation | Infrastructure/application automation using Ansible |
| 12 | Log Generation | Application logs generated successfully |
| 13 | Log Rotation | Application logs successfully rotated and archived |
| 14 | Backup Created | Backup archive successfully created |
| 15 | Data Restoration | Backup data successfully restored |
| 16 | Environment Verification | System and DevOps environment verification |
| 17 | Final Pipeline Success | Final successful end-to-end pipeline verification |

---

# 01 - Project Structure

**Screenshot:** `01-project-structure.png`

This screenshot shows the complete directory structure of the XQORA DevOps project.

The project includes:

- Application source code
- Docker configuration
- GitHub Actions workflows
- Self-hosted runner configuration
- Automation scripts
- Ansible configuration
- Monitoring configuration
- Logging system
- Backup and restore system
- Environment information
- Evidence and verification files

The screenshot also confirms that the Git repository is clean and synchronized with the remote repository.

---

# 02 - GitHub Actions CI

**Screenshot:** `02-github-actions-ci.png`

This screenshot demonstrates successful execution of the Continuous Integration workflow.

The CI workflow validates the application and performs automated checks before deployment.

Typical CI activities include:

- Checking out source code
- Installing dependencies
- Running application tests
- Validating the build process

A successful workflow confirms that the application changes passed the automated integration process.

---

# 03 - GitHub Actions CD

**Screenshot:** `03-github-actions-cd.png`

This screenshot demonstrates successful execution of the Continuous Deployment workflow.

The CD pipeline automates the deployment process after successful validation.

The deployment workflow includes automated steps required to deploy or update the application environment.

Successful execution confirms that the deployment automation completed correctly.

---

# 04 - Self-Hosted Runner

**Screenshot:** `04-self-hosted-runner.png`

This screenshot shows the self-hosted GitHub Actions runner configured for the project.

The runner allows GitHub Actions workflows to execute on the configured local or self-managed environment.

This enables deployment and automation tasks that require direct access to the target environment.

---

# 05 - Docker Containers

**Screenshot:** `05-docker-containers.png`

This screenshot shows the Docker containers running for the XQORA application environment.

The containerized architecture allows the application and its supporting services to run in isolated and reproducible environments.

The screenshot verifies that the required containers are running successfully.

---

# 06 - Application Health

**Screenshot:** `06-application-health.png`

This screenshot demonstrates a successful application health check.

The health endpoint verifies that the application is reachable and responding correctly.

A successful health check confirms that the deployed application is operational.

---

# 07 - Prometheus Target

**Screenshot:** `07-prometheus-target.png`

This screenshot shows the XQORA application or monitoring target successfully discovered by Prometheus.

Prometheus periodically collects metrics from configured targets.

The target status confirms that the monitoring system can successfully communicate with the configured service.

---

# 08 - Grafana Dashboard

**Screenshot:** `08-grafana-dashboard.png`

This screenshot shows the Grafana monitoring dashboard configured for the project.

The dashboard provides visualization of metrics collected through the monitoring stack.

This allows system and application behavior to be observed through centralized monitoring.

---

# 09 - Health Check Automation

**Screenshot:** `09-health-check-automation.png`

This screenshot demonstrates the automated health check script.

The automation verifies whether the required application or service components are available and responding correctly.

This reduces the need for manual service verification.

---

# 10 - Security Check

**Screenshot:** `10-security-check.png`

This screenshot demonstrates execution of the automated security check.

The script performs the security validations implemented in the XQORA DevOps project.

The successful result confirms that the configured security verification process executed correctly.

---

# 11 - Ansible Automation

**Screenshot:** `11-ansible-automation.png`

This screenshot demonstrates automation performed using Ansible.

The Ansible configuration includes:

- Inventory configuration
- Playbook execution
- Automated setup tasks

Successful execution confirms that the defined automation tasks were completed successfully.

---

# 12 - Log Generation

**Screenshot:** `12-log-generation.png`

This screenshot demonstrates successful generation of application logs.

The logging system records application events and supports multiple log severity levels, including:

- INFO
- WARNING
- ERROR

This provides operational visibility and helps identify application events and failures.

---

# 13 - Log Rotation

**Screenshot:** `13-log-rotation.png`

This screenshot demonstrates successful log rotation.

The existing application log is archived with a timestamp and a new log file is created.

This prevents continuous growth of a single log file and helps maintain organized log history.

---

# 14 - Backup Created

**Screenshot:** `14-backup-created.png`

This screenshot demonstrates successful creation of a backup archive.

The backup automation creates a compressed backup file and stores it inside the backup archive directory.

This provides a recoverable copy of the configured project data.

---

# 15 - Data Restoration

**Screenshot:** `15-data-restoration.png`

This screenshot demonstrates successful restoration of data from the backup archive.

The restoration process extracts the stored backup data into the configured restore location.

The restored files verify that the backup can be successfully recovered when required.

---

# 16 - Environment Verification

**Screenshot:** `16-environment-verification.png`

This screenshot demonstrates execution of the XQORA DevOps environment verification process.

The verification checks the availability and status of the development and deployment environment, including:

- Operating system
- Current user
- Docker
- Docker Compose
- Git
- Disk usage
- Memory usage

The project also collects detailed system information including:

- Hostname
- CPU information
- Network interfaces
- IP configuration

The collected environment information is stored in:

`environment/environment-info.txt`

---

# 17 - Final Pipeline Success

**Screenshot:** `17-final-pipeline-success.png`

This screenshot represents the final successful verification of the XQORA DevOps workflow.

It demonstrates that the major components of the project have been implemented and validated, including:

- Continuous Integration
- Continuous Deployment
- Self-hosted runner execution
- Containerized application deployment
- Application health verification
- Monitoring with Prometheus
- Visualization with Grafana
- Automated health checks
- Security checks
- Ansible automation
- Application logging
- Log rotation
- Backup creation
- Data restoration
- Environment verification

---

# Evidence Files

The screenshots in this directory are named sequentially to make the project execution flow easy to understand.

```text
evidence/
└── screenshots/
    ├── README.md
    ├── 01-project-structure.png
    ├── 02-github-actions-ci.png
    ├── 03-github-actions-cd.png
    ├── 04-self-hosted-runner.png
    ├── 05-docker-containers.png
    ├── 06-application-health.png
    ├── 07-prometheus-target.png
    ├── 08-grafana-dashboard.png
    ├── 09-health-check-automation.png
    ├── 10-security-check.png
    ├── 11-ansible-automation.png
    ├── 12-log-generation.png
    ├── 13-log-rotation.png
    ├── 14-backup-created.png
    ├── 15-data-restoration.png
    ├── 16-environment-verification.png
    └── 17-final-pipeline-success.png
