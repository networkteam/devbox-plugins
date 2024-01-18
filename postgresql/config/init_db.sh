#! bash

if [ ! -f "$PGDATA/PG_VERSION" ]; then
  # Init the database
   initdb
fi
