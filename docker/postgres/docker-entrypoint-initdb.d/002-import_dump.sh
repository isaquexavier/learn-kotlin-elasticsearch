#!/usr/bin/env sh

echo "======= import sql dump ======="

psql lke_app -f /db-dumps/dump.sql