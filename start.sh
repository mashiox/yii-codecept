#!/bin/bash

I=$(docker ps --format "{{.Image}} {{.Names}}" | grep yii-codecept | cut -d" " -f2)
docker exec -it "$I" /bin/bash
