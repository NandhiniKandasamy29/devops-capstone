# DevOps Capstone Project

## Project Overview

This project demonstrates a complete DevOps CI/CD pipeline using:

- React Application
- Docker
- Jenkins
- GitHub
- Docker Hub
- Prometheus
- Grafana
- AWS EC2

The application is containerized using Docker and deployed automatically through Jenkins pipeline.

---

# Tools & Technologies Used

- React JS
- Docker
- Jenkins
- GitHub
- Docker Hub
- Prometheus
- Grafana
- AWS EC2 Ubuntu Instance

---

# Project Architecture

GitHub → Jenkins Pipeline → Docker Build → Docker Hub → Docker Container Deployment → Monitoring using Prometheus & Grafana

---

# Application Setup

## Clone Repository

```bash
git clone https://github.com/NandhiniKandasamy29/devops-capstone.git
```

## Move into Project Directory

```bash
cd devops-capstone/devops-build
```

## Install Dependencies

```bash
npm install
```

## Run Application

```bash
npm start
```

Application runs on:

```text
http://localhost:3000
```

---

# Docker Setup

## Build Docker Image

```bash
docker build -t final-devops-app .
```

## Run Docker Container

```bash
docker run -d -p 80:80 --name final-react-app final-devops-app
```

Application runs on:

```text
http://localhost
```

---

# Docker Hub Repository

## Tag Docker Image

```bash
docker tag final-devops-app nandhini209/nandhini-dev-app
```

## Push Docker Image

```bash
docker push nandhini209/nandhini-dev-app
```

Docker Hub Repository:

https://hub.docker.com/r/nandhini209/nandhini-dev-app

---

# Jenkins CI/CD Pipeline

## Pipeline Stages

1. Clone Repository
2. Build Docker Image
3. Tag Docker Image
4. Push Image to Docker Hub
5. Deploy Docker Container

---

# Jenkinsfile

The Jenkins pipeline is configured using Jenkinsfile inside the GitHub repository.

---

# Monitoring Setup

## Prometheus

Prometheus collects metrics from Node Exporter.

Access:

```text
http://13.201.66.59:9090
```

---

## Node Exporter

Node Exporter provides system-level metrics.

Access:

```text
http://13.201.66.59:9100/metrics
```

---

## Grafana

Grafana visualizes monitoring metrics using dashboards.

Access:

```text
http://13.201.66.59:3000
```

Default Login:

```text
Username: admin
Password: admin
```

---

# Monitoring Dashboard Metrics

- CPU Usage
- Memory Usage
- Disk Usage
- Network Usage

---

# AWS EC2 Configuration

- Ubuntu EC2 Instance
- Docker Installed
- Jenkins Installed
- Prometheus Installed
- Grafana Installed

---

# GitHub Repository

https://github.com/NandhiniKandasamy29/devops-capstone

---

# Screenshots Included

- Jenkins Pipeline Success
- Docker Build Output
- Docker Hub Push
- Application Output
- Prometheus Targets
- Node Exporter Metrics
- Grafana Dashboard

---

# Project Outcome

Successfully implemented an end-to-end DevOps CI/CD pipeline with monitoring and containerized deployment using AWS and Jenkins.
