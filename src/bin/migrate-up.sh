#!/bin/bash

set -e
sleep 10

echo yes | /opt/app/protected/yiic migrate up

exec "$@"