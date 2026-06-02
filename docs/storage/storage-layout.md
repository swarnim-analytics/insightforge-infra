# Storage Architecture

## Overview

The InsightForge ecosystem uses a structured storage layout designed for:

- scalability
- maintainability
- automation
- backup management
- service isolation

The storage architecture separates infrastructure, analytics, models, media, and operational data into dedicated directories.

---

## Root Storage Layout

```text
/server/
├── storage/
├── media/
├── backups/
├── datasets/
├── notebooks/
├── automation/
├── docker/
├── projects/
└── models/
```

---

## Directory Responsibilities

### /server/storage

Purpose:

- general application storage
- persistent service data
- shared storage volumes

Examples:

- Nextcloud data
- application files
- shared resources

---

### /server/media

Purpose:

- photos
- videos
- personal media
- synchronized content

Used by:

- Nextcloud
- future media services

---

### /server/backups

Purpose:

- backup archives
- configuration backups
- project snapshots
- disaster recovery

Backup targets:

- Docker configurations
- application settings
- project repositories
- important datasets

---

### /server/datasets

Purpose:

- analytics datasets
- market data
- processed datasets
- machine learning data

Used by:

- InsightForge-Intelligence
- JupyterLab
- analytics pipelines

---

### /server/notebooks

Purpose:

- Jupyter notebooks
- exploratory analysis
- research work
- AI experimentation

Examples:

- portfolio analysis
- model testing
- market research

---

### /server/automation

Purpose:

- automation scripts
- scheduled workflows
- ETL jobs
- monitoring jobs

Examples:

- backups
- data ingestion
- reporting

---

### /server/docker

Purpose:

- Docker Compose files
- container configurations
- infrastructure stacks

Examples:

- Ollama
- Open WebUI
- Nextcloud
- PostgreSQL

---

### /server/projects

Purpose:

- source code
- repositories
- application development

Current projects:

```text
/server/projects
├── insightforge-ai
├── insightforge-intelligence
├── insightforge-infra
└── telegram-ai-bot
```

---

### /server/models

Purpose:

- Ollama models
- machine learning models
- embeddings
- future AI artifacts

Examples:

- Phi-3
- Mistral
- Llama
- custom models

---

## Repository Usage

### InsightForge-AI

Primary usage:

- Docker infrastructure
- AI runtime
- storage orchestration
- automation runtime

---

### InsightForge-Intelligence

Primary usage:

- datasets
- analytics
- notebooks
- AI reasoning
- portfolio intelligence

---

### InsightForge-Infra

Primary usage:

- architecture documentation
- deployment standards
- operational procedures

---

## Storage Principles

The storage architecture follows:

- clear separation of responsibilities
- predictable directory structure
- backup-friendly organization
- automation-friendly paths
- future scalability

---

## Long-Term Goals

The storage platform should support:

- local AI inference
- portfolio intelligence
- infrastructure monitoring
- analytics workloads
- media storage
- automation workflows
- future service expansion

while maintaining a simple and understandable structure.
