#!/bin/bash

bosh -e min-bosh -d paasta -n deploy min-paasta-deployment.yml \
	-o operations/min-aws.yml \
        -o operations/min-create-vm-singleton-blobstore.yml \
        -o operations/min-create-vm-tcp-router.yml \
        -o operations/min-use-haproxy.yml \
        -o operations/use-haproxy-public-network.yml \
        -o operations/min-use-postgres.yml \
	-o operations/min-rename-network-and-deployment.yml \
        -o operations/min-option-network-and-deployment.yml \
	-l aws-vars.yml \
	-l ../../common/common_vars.yml
