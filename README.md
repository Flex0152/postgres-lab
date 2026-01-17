# Postgres Container Lab
This project provides a fully reproducible PostgresSQL 
environment using podman compose.

It includes:
- PostgresSQL database server
- pgAdmin web UI
- pgcli Tooling

The setup serves as the infrastructure foundation for a future household bookkeeping application and focuses on clean, repeatable database operations. 

---

## Motivation
Before starting application development, I wanted a reliable and reproducible database environment that:

- does not require a local PostgreSQL installation
- can be started and stopped with a single command
- works identically across different machines
- provides both GUI and CLI access to the database

This repository represents that preparation step from an Ops perspective.

---

## Architecture 
Postgres <---> pgAdmin  
|  
+--> pgcli (custom image)

---

## Repository Structure
postgres-lab/
├── compose.yaml
├── top-secret.txt
├── pgcli/
│ └── Dockerfile
├── scripts/
│ ├── pgcli-build-image.sh
│ ├── pgcli-sun.sh
│ ├── lab-up.sh
│ └── lab-down.sh
└── README.md

---

## Requirements
- Podman
- podman-compose
- Bash-compatible shell

> Docker users can adapt the setup easily, but Podman is the primary target.

---

## Usage
### Start the lab
```bash
./scripts/lab-up.sh
```
This will start:
- PostgreSQL
- pgAdmin

### Build and run pgcli
```bash
# Build the custom image
./scripts/pgcli-build-image.sh
# The pgcli container connects directly to the PostgreSQL service. 
./scripts/pgcli-run.sh
```

### Stop the lab
```bash
./scripts/lab-down.sh
```

## License
This Project is released under the MIT [License](./LICENSE).
