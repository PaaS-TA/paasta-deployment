#!/bin/bash

bosh -e micro-bosh -d paasta -n deploy paasta-deployment.yml \
	-o operations/bosh-lite.yml \
        -o operations/use-compiled-releases-online.yml \
        -o operations/use-postgres.yml \
        -o operations/use-compiled-releases-postgres-online.yml \
	-o operations/rename-network-and-deployment.yml \
	-l bosh-lite-vars.yml \
	-l ../../common_vars.yml
