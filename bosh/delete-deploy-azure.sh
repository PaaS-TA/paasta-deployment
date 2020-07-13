#!/bin/bash

bosh delete-env -n bosh.yml \
	--state=azure/state.json \
	--vars-store azure/creds.yml \
	-o use-compiled-releases.yml \
	-o azure/cpi.yml \
	-o use-compiled-releases-azure.yml \
	-o uaa.yml  \
	-o use-compiled-releases-uaa.yml \
	-o credhub.yml  \
	-o use-compiled-releases-credhub.yml \
	-o jumpbox-user.yml  \
	-o use-compiled-releases-jumpbox.yml \
	-l vars-azure.yml
