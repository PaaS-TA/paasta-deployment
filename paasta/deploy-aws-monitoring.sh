#!/bin/bash

bosh -e micro-bosh -d paasta -n deploy paasta-deployment.yml \
	-o operations/aws.yml \
	-o operations/use-compiled-releases-online.yml \
	-o operations/use-haproxy.yml \
	-o operations/use-haproxy-public-network.yml \
	-o operations/use-compiled-releases-haproxy-online.yml \
	-o operations/use-postgres.yml \
	-o operations/use-compiled-releases-postgres-online.yml \
	-o operations/rename-network-and-deployment.yml \
	-o paasta-addon/paasta-monitoring.yml \
    -o operations/addons/enable-component-syslog.yml \
	-l aws-vars.yml \
	-l ../../common/common_vars.yml
