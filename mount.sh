#!/bin/bash

docker run -it -v $(pwd)/app:/opt/snafu yii-codecept
