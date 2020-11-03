#!/bin/bash

bosh -e micro-bosh -d paasta -n deploy paasta-deployment.yml \
	-o operations/openstack.yml \
	-o operations/use-haproxy.yml \
	-o operations/use-haproxy-public-network.yml \
	-o operations/use-postgres.yml \
	-o operations/rename-network-and-deployment.yml \
	-l openstack-vars.yml \
	-l ../../common/common_vars.yml
