#!/bin/bash

bosh -e min-bosh -d paasta -n deploy min-paasta-deployment.yml \
	-o operations/min-aws.yml \
    -o operations/min-use-router-public-network.yml \
    -o operations/min-use-postgres.yml \
	-o operations/min-rename-network-and-deployment.yml \
	-l aws-vars.yml \
	-l ../../common/common_vars.yml
