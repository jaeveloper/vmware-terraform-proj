# Enterprise On-Prem Kubernetes Platform on VMware (Terraform)

## Overview

This project defines the **infrastructure architecture and Terraform codebase** for an enterprise-grade, fully on-premises application platform built on **VMware vSphere**.  
The platform is designed to support **containerized microservices**, **API-driven workloads**, and **web/mobile clients**, while meeting **strict data residency, security, and compliance requirements**.

The primary objective is to **architect and codify** a production-ready on-prem platform using **Infrastructure as Code (IaC)** principles.  
This repository focuses on **infrastructure design and provisioning readiness**, not application deployment.

---

## Architecture Diagram

> 📌
![image](https://github.com/user-attachments/assets/a1a1c7a1-5280-40db-a42a-ba41fadff87e)



---

## Key Design Goals

- Fully on-prem architecture (no dependency on public cloud services)
- High availability and disaster recovery–ready design
- Enterprise networking, security, and traffic management
- Consistent environments (dev / test / prod) via Terraform
- Kubernetes-first application platform
- Clear separation between infrastructure, platform, and application layers

---

## High-Level Architecture

**Traffic Flow (Simplified):**

1. Clients (Web & Mobile)
2. Global traffic management and failover
3. Data center edge load balancing and WAF
4. Kubernetes ingress and API gateway
5. Backend microservices
6. Asynchronous data pipelines to analytics and reporting systems



