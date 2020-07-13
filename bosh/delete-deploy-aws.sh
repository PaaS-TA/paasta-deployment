#!/bin/bash

bosh delete-env -n bosh.yml \
	--state=aws/state.json \
	--vars-store=aws/creds.yml \
	-o use-compiled-releases.yml \
	-o aws/cpi.yml \
	-o use-compiled-releases-aws.yml \
	-o uaa.yml \
	-o use-compiled-releases-uaa.yml \
	-o credhub.yml \
	-o use-compiled-releases-credhub.yml \
	-o jumpbox-user.yml \
	-o use-compiled-releases-jumpbox.yml \
	-l vars-aws.yml

