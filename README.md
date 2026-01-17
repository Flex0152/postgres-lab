# Postgres Container Lab
This project provides a fully reproducible PostgresSQL 
environment using podman compose.

It includes:
- PostgresSQL database server
- pgAdmin web UI
- pgcli command line client

The goal is to provide a portable database lab for development, 
testing and learning. 

## Architecture 
Postgres <---> pgAdmin  
|  
+--> pgcli (custom image)

## Usage
```bash
podman compose up -d
/pgcli/build_image.sh
/pgcli/build_container.sh
```

## Why this exists
I wanted a portable Postgres environment that:
- can start in seconds
- require no local database installation
- works the same on every machine

