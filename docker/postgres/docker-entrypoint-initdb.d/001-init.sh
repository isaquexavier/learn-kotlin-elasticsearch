#!/usr/bin/env sh

echo "======= create db and (user) roles ======="

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE ROLE app_rw WITH LOGIN PASSWORD 'app_rw';
    CREATE DATABASE lke_app OWNER app_rw;
    GRANT ALL ON DATABASE lke_app TO app_rw;
EOSQL


psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE ROLE app_ro WITH LOGIN ENCRYPTED PASSWORD 'app_ro' NOSUPERUSER NOCREATEROLE NOCREATEDB ;
    GRANT CONNECT ON DATABASE lke_app TO app_ro;
    \c lke_app;
    ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON TABLES TO app_ro; --- this grants privileges on new tables generated in new database "foo"
    GRANT USAGE ON SCHEMA public TO app_ro;
    GRANT SELECT ON ALL TABLES IN SCHEMA public TO app_ro;
    GRANT SELECT ON ALL SEQUENCES IN SCHEMA public TO app_ro;
EOSQL