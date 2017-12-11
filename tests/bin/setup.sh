#!/bin/bash

# set -e 

/opt/app/vendor/bin/codecept \
    -c /opt/app/protected/tests/codeception.yml \
    build

exec "$@"