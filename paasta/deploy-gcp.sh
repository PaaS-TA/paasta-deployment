#!/bin/bash

bosh -e micro-bosh -d paasta deploy paasta-deployment.yml \
	-o operations/use-haproxy.yml \
	-o operations/use-haproxy-public-network.yml \
	-o operations/use-postgres.yml \
	-o operations/rename-network-and-deployment.yml \
	-l gcp-vars.yml \
	-l ../../common/common_vars.yml
