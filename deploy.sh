#!/bin/bash

docker build -t steemd-test .
docker tag steemd-test furion/steemd-test
docker push furion/steemd-test
