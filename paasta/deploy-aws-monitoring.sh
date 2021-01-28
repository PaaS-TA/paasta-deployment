#!/bin/bash

bosh -e micro-bosh -d paasta -n deploy paasta-deployment.yml \
	-o operations/aws.yml \
	-o operations/cce.yml \
	-o operations/use-compiled-releases-online.yml \
	-o operations/use-haproxy.yml \
	-o operations/use-haproxy-public-network.yml \
	-o operations/use-postgres.yml \
	-o operations/rename-network-and-deployment.yml \
	-o operations/addons/paasta-monitoring-agent.yml \
  	-o operations/addons/enable-component-syslog.yml \
	-l aws-vars.yml \
	-l ../../common/common_vars.yml