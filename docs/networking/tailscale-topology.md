# Tailscale Network Topology

## Overview

The InsightForge ecosystem uses a VPN-first networking model.

Remote access is provided through Tailscale rather than exposing services directly to the public internet.

This approach improves:

- security
- simplicity
- remote accessibility
- infrastructure reliability

---

## Core Principles

- Avoid unnecessary public port exposure
- Use Tailscale as the primary remote access method
- Restrict administrative access to trusted devices
- Access services through the private mesh network
- Maintain a minimal attack surface

---

## Current Topology

```text
MacBook
│
├── VSCode
├── Browser
└── Terminal
      │
      ▼
Tailscale Mesh Network
      │
      ▼
Ubuntu Home Server
      │
      ▼
Docker Infrastructure
      │
      ├── Ollama
      ├── Open WebUI
      ├── Nextcloud
      ├── Future APIs
      ├── Monitoring
      └── Automation Services
```

---

## Administrative Workflow

Primary workflow:

MacBook → VSCode Remote SSH → Ubuntu Server

Used for:

- development
- configuration
- Docker management
- Git operations
- notebook work
- infrastructure maintenance

Terminal usage is primarily reserved for:

- SSH
- diagnostics
- Docker operations
- monitoring
- troubleshooting

---

## Service Access

### AI Services

- Ollama
- Open WebUI

Accessed through:

- local network
- Tailscale network

---

### Cloud Services

- Nextcloud

Accessed through:

- local network
- Tailscale network

---

## Future Services

Planned services include:

- PostgreSQL
- JupyterLab
- FastAPI
- Telegram integration
- WhatsApp integration
- monitoring dashboards

All services should remain behind the Tailscale network whenever possible.

---

## Security Model

Preferred:

```text
Internet
    │
    ▼
Tailscale VPN
    │
    ▼
Ubuntu Server
```

Avoid:

```text
Internet
    │
    ▼
Public Open Ports
    │
    ▼
Server
```

unless absolutely required.

---

## Long-Term Goal

Create a secure private infrastructure that supports:

- AI experimentation
- analytics
- automation
- portfolio intelligence
- infrastructure monitoring

without relying on direct public exposure.
