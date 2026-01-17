# Postgres Container Lab
Das Projekt stellt eine komplette, reproduzierbare mit 
podman compose erstellte Postgres SQL Umgebung bereit.

Das beinhaltet: 
- ein PostgresSQL Datenbankserver
- pgAdmin Weboberfläche
- pgcli command line client

Das Ziel ist, ein portables Datenbank lab für Entwicklung, Testing und
Lernen zu erstellen. 

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

