podman run \
    -it \
    --name "pg_cli" \
    --network "postgres-lab_db-network" \
    --rm \
    pgcli:latest