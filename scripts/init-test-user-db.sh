#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE USER test WITH PASSWORD 'test';
    ALTER USER test WITH SUPERUSER;
EOSQL
