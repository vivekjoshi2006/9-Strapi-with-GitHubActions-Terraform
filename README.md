# 🚀 Automate Strapi Deployment with GitHub Actions & Terraform


## 📌 Project Overview

This project automates the deployment of a **Strapi CMS** (Headless CMS) onto an **AWS EC2** instance using **Terraform** for Infrastructure as Code (IaC) and **GitHub Actions** for Continuous Deployment (CD). The application is containerized using **Docker** for consistent environments.

---

## 🛠 Tech Stack

* **Infrastructure:** AWS (EC2, Security Groups)
* **IaC Tool:** Terraform
* **CI/CD:** GitHub Actions
* **Containerization:** Docker
* **CMS Framework:** Strapi

---

## 🚀 Key Features & Improvements

### 1. Infrastructure as Code (Terraform)

* Automated provisioning of EC2 instances and Security Groups.
* **Dynamic Security Groups:** Configured to allow traffic on Port `22` (SSH) and Port `1337` (Strapi).
* **Resource Versioning:** Implemented unique naming for Security Groups to prevent `InvalidGroup.Duplicate` errors.

### 2. Performance Optimization

* **Instance Upgrade:** Upgraded from `t2.micro` to **`t2.small`** (2GB RAM).
* *Why?* Strapi requires more memory than the standard 1GB provided by micro instances to prevent container crashes during startup.

### 3. Professional Workflow (Git Flow)

* Implemented a **Branch-based strategy**.
* Developed changes in the `vivek-joshi` branch.
* Managed deployments via **Pull Requests (PR)** to ensure code quality before merging into `main`.

---

## 📂 Project Structure

```text
├── .github/workflows/
│   └── deploy.yml        # GitHub Actions CD Pipeline
├── main.tf               # Primary Terraform configuration
├── variables.tf          # Configurable parameters
└── README.md             # Project documentation

```

---

## ⚙️ Setup Instructions

1. **Configure AWS Secrets:** Add `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY` to your GitHub Repository Secrets.
2. **Docker Image:** Ensure your Strapi Docker image is pushed to Docker Hub.
3. **Deployment:** * Push code to the `vivek-joshi` branch.
* Create a Pull Request to `main`.
* Once merged, GitHub Actions will automatically provision the AWS resources and start the Strapi container.



---

## 📺 Demo & Links

* **GitHub PR:** [View Pull Request](https://github.com/vivekjoshi2006/9-Strapi-with-GitHubActions-Terraform/compare/main...vivek-joshi)
* **Loom Video:** [Watch Project Walkthrough](https://www.loom.com/share/d1afc0f678a74fd7b9d08d9638f578e4)

---
