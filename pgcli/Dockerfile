FROM alpine:3.23

ENV PGHOST="postgres_sql_srv" \
    PGUSER="postgres" \
    PGDATABASE="KostenDB"

RUN apk add --no-cache pgcli

CMD ["pgcli"]