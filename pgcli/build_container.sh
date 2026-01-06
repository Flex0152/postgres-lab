podman run \
    -it \
    --name "pg_cli" \
    --network "postgres_db-network" \
    --rm \
    postgres_client:latest \
    /bin/sh