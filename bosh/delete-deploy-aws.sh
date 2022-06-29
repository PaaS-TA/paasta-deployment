#!/bin/bash

bosh delete-env bosh.yml \
	--state=aws/state.json \
	--vars-store=aws/creds.yml \
	-o aws/cpi.yml \
	-o uaa.yml \
	-o credhub.yml \
	-o cce.yml \
	-o jumpbox-user.yml \
	-l aws-vars.yml
