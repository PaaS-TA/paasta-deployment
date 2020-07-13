#!/bin/bash

bosh delete-env -n bosh.yml \
	--state=gcp/state.json \
	--vars-store gcp/creds.yml \
	-o use-compiled-releases.yml \
	-o gcp/cpi.yml \
	-o use-compiled-releases-gcp.yml \
	-o uaa.yml \
	-o use-compiled-releases-uaa.yml \
	-o credhub.yml \
	-o use-compiled-releases-credhub.yml \
	-o jumpbox-user.yml \
	-o use-compiled-releases-jumpbox.yml \
	--var-file gcp_credentials_json=~/.ssh/paasta-project.json \
	-l vars-gcp.yml

