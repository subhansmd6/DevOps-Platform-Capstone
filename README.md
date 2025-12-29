# DevOps Platform Capstone

## 📌 Project Overview

This repository contains a **full-stack DevOps platform** built to demonstrate real-world, production-grade DevOps practices.

The project covers the **entire lifecycle** of an application:

- Infrastructure provisioning
- Configuration management
- CI/CD pipeline design
- Quality enforcement
- Artifact management
- Containerization
- Failure injection and recovery
- Traceability and observability
- Documentation and defense readiness

> **Core Principle:**  
> *Everything is created, broken, fixed, and explained using code — never manual UI actions.*


## 🧰 Toolchain Overview

| Category | Tool | Purpose |
|------|------|------|
| Infrastructure as Code | **Terraform** | Provision cloud infrastructure |
| Configuration Management | **Ansible** | Configure servers & services |
| CI/CD | **Jenkins** | Pipeline orchestration |
| Code Quality | **SonarQube** | Static code analysis & quality gates |
| Artifact Repository | **Nexus** | Artifact storage & versioning |
| Containerization | **Docker** | Build & package applications |
| SCM | **GitHub** | Source control |
| Notifications | *(Slack / Email)* | Pipeline feedback |

---

## 🏗️ High-Level Architecture

Developer
|
v
GitHub Repository
|
v
Jenkins (CI/CD)
|
|---> SonarQube (Quality Gate)
|---> Nexus (Artifacts)
|---> Docker Host (Build Runtime)
|
v
Docker Registry


### Infrastructure Layout

- Custom VPC (no default VPC usage)
- Public subnet for controlled access
- Dedicated servers:
  - Jenkins
  - SonarQube
  - Nexus
  - Docker Build Host
- Security Groups with **SG-to-SG referencing**
- IAM roles attached per server responsibility

---

## 📁 Repository Structure

devops-platform-capstone/
│
├── terraform/
│ ├── backend/
│ ├── modules/
│ │ ├── network/
│ │ ├── security/
│ │ ├── compute-jenkins/
│ │ ├── compute-sonarqube/
│ │ ├── compute-nexus/
│ │ └── compute-docker/
│ └── environments/
│
├── ansible/
│ ├── inventory/
│ ├── roles/
│ │ ├── jenkins/
│ │ ├── sonarqube/
│ │ ├── nexus/
│ │ └── docker/
│ └── playbooks/
│
├── jenkins/
│ └── Jenkinsfile
│
├── app/
│ ├── src/
│ ├── tests/
│ └── Dockerfile
│
└── README.md


---

## 🟦 Phase Breakdown

### 🟦 Phase 0 — Repository & Standards

- Professional repository layout
- Clear ownership and scope
- No infrastructure or application code yet
- Documentation-first mindset

---

### 🟦 Phase 1 — Infrastructure Provisioning (Terraform)

**Key Principles**
- Remote backend with state locking
- Encryption & versioning enabled
- Modular architecture
- No hardcoded values
- No default VPC usage

**Failure Injection**
- Parallel `terraform apply` to validate state locking

---

### 🟦 Phase 2 — Configuration Management (Ansible)

**Key Principles**
- Dynamic inventory generated from Terraform outputs
- Idempotent roles
- No static IPs
- Drift detection and correction

**Services Configured**
- Jenkins
- SonarQube (Dockerized)
- Nexus (Dockerized)
- Docker build host

---

### 🟦 Phase 3 — CI/CD Pipeline (Jenkins)

**Pipeline Stages**
1. Checkout
2. SonarQube Analysis
3. Build & Test
4. Artifact Upload (Nexus)
5. Docker Build
6. Docker Push
7. Notifications

**Key Rules**
- Declarative pipeline
- Commit-based tagging
- No secrets in Jenkinsfile
- Quality gates block downstream stages

---

### 🟦 Phase 4 — Traceability & Observability

- Trace Docker image → Jenkins build
- Jenkins build → Git commit
- Git commit → Nexus artifact
- Full audit trail documented

---

### 🟦 Phase 5 — Documentation & Defense

**Mandatory Documentation**
- Architecture
- Terraform design
- Ansible roles
- Jenkins pipeline
- Failure scenarios
- Lessons learned

**Final Defense Topics**
- Terraform vs Ansible responsibilities
- Importance of quality gates
- Failure propagation
- Recovery using code only

---

## 🔐 Security & Best Practices

- Least-privilege IAM roles
- Restricted Security Groups
- No `0.0.0.0/0` unless explicitly justified
- Secrets stored in Jenkins credentials
- No secrets in Git
- Infrastructure changes via code only

---

## 🧪 Failure Injection Philosophy

This project **intentionally breaks things** to prove reliability:

- Terraform state locking conflicts
- Missing security group rules
- Stopped containers
- Broken unit tests
- Failed quality gates
- Invalid Dockerfiles
- Missing credentials

> **Recovery is always performed using code, never UI actions.**

---

## 📈 Evaluation Signals Covered

✔ Clear separation of concerns  
✔ Modular Terraform design  
✔ Idempotent Ansible roles  
✔ Quality gates enforced  
✔ Artifact traceability  
✔ Immutable infrastructure mindset  
✔ Production-grade CI/CD behavior  

---

## 🏁 Final Pass Criteria

> **A candidate passes only if:**

> **“They can build it, break it, fix it, and explain it — without touching the UI.”**

---

## 👤 Ownership

**Author:** _[Your Name]_  
**Role:** DevOps Engineer (Capstone Project)  
**Purpose:** Demonstrate production-ready DevOps platform design and operation

---

## 📎 License

This project is for educational and demonstration purposes.



