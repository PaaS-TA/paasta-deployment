#!/bin/bash

bosh create-env bosh.yml \
	--state=gcp/state.json \
	--vars-store gcp/creds.yml \
	-o gcp/cpi.yml \
	-o uaa.yml  \
	-o credhub.yml  \
	-o jumpbox-user.yml  \
	-o syslog.yml \
	-o paasta-addon/paasta-monitoring-agent.yml \
	--var-file gcp_credentials_json=~/.ssh/paasta-project.json \
	-l gcp-vars.yml
