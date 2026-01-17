FROM alpine:3.23

ENV PGHOST="postgres_sql_srv" \
    PGUSER="postgres"

RUN apk add --no-cache pgcli

CMD ["pgcli"]