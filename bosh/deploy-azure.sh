#!/bin/bash

bosh create-env bosh.yml \
	--state=azure/state.json \
	--vars-store azure/creds.yml \
	-o azure/cpi.yml \
	-o uaa.yml  \
	-o credhub.yml  \
	-o jumpbox-user.yml  \
	-l azure-vars.yml
