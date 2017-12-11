#!/bin/bash

set -e

/opt/app/vendor/bin/codecept \
    -vvv \
    -c /opt/app/protected/tests/codeception.yml \
    run