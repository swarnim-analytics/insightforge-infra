# Security Model

## Overview

The InsightForge ecosystem follows a security-first architecture.

Security decisions prioritize:

- infrastructure stability
- private access
- minimal attack surface
- operational simplicity
- data protection

The platform is intended for personal use, AI experimentation, analytics, automation, and private cloud services.

---

## Security Philosophy

Core principles:

- deny unnecessary exposure
- prefer private networking
- isolate services
- automate backups
- minimize privileges
- document infrastructure

Security is considered before convenience whenever practical.

---

## Remote Access Strategy

Primary remote access method:

```text
Tailscale VPN
```

Preferred workflow:

```text
MacBook
    │
    ▼
Tailscale
    │
    ▼
Ubuntu Server
```

Remote administration should occur through:

- Tailscale
- SSH
- VSCode Remote SSH

---

## Public Exposure Policy

Preferred:

```text
Internet
    │
    ▼
Tailscale
    │
    ▼
Server
```

Avoid:

```text
Internet
    │
    ▼
Open Public Ports
    │
    ▼
Server
```

Public exposure should only occur when absolutely necessary.

---

## Server Security

Operating system:

- Ubuntu Server LTS

Security practices:

- regular updates
- minimal installed software
- controlled SSH access
- least privilege approach

Administrative account:

```text
swash
```

Routine work should occur through the non-root account.

---

## SSH Security

SSH is used for:

- administration
- Git operations
- VSCode Remote SSH

Authentication:

```text
SSH Key Authentication
```

Preferred:

- key-based access
- strong passphrases
- limited user access

Avoid:

```text
password-based authentication
```

whenever possible.

---

## Docker Security

All major services should run inside containers.

Examples:

- Ollama
- Open WebUI
- Nextcloud
- PostgreSQL
- monitoring services

Benefits:

- isolation
- portability
- easier maintenance
- simplified upgrades

Containers should use:

- dedicated volumes
- minimal permissions
- isolated networks where appropriate

---

## AI Security

AI workloads should remain local whenever practical.

Primary AI stack:

- Ollama
- Open WebUI

Goals:

- privacy
- local inference
- reduced external dependency

Sensitive information should not be unnecessarily exposed to external AI services.

---

## Backup Strategy

Backups should include:

- Docker configurations
- project repositories
- important datasets
- critical documentation

Primary backup location:

```text
/server/backups
```

Goals:

- disaster recovery
- configuration recovery
- project recovery

---

## GitHub Workflow

Source code management:

```text
GitHub
```

Authentication:

```text
SSH Keys
```

Repository structure:

- insightforge-ai
- insightforge-intelligence
- insightforge-infra

Benefits:

- secure authentication
- simplified Git workflows
- no password-based Git operations

---

## Development Workflow Security

Primary development environment:

```text
VSCode Remote SSH
```

Benefits:

- direct editing on server
- reduced file transfer requirements
- centralized development environment

Preferred workflow:

```text
MacBook
    │
    ▼
VSCode Remote SSH
    │
    ▼
Ubuntu Server
```

---

## Long-Term Security Goals

Maintain:

- private infrastructure
- secure remote access
- container isolation
- reliable backups
- documented architecture

while supporting:

- AI experimentation
- analytics
- automation
- portfolio intelligence
- infrastructure monitoring
