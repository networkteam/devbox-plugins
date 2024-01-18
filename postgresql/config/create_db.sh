#! bash

if [ -n "$DATABASE_NAME" ]; then
  if ! psql -lqt | cut -d \| -f 1 | grep -qw $DATABASE_NAME; then
    echo 'Creating database'
    createdb $DATABASE_NAME
  fi
fi

if [ -n "$TEST_DATABASE_NAME" ]; then
  if ! psql -lqt | cut -d \| -f 1 | grep -qw $TEST_DATABASE_NAME; then
    echo 'Creating test database'
    createdb $TEST_DATABASE_NAME
  fi
fi
