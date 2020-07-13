#!/bin/bash

bosh delete-env -n bosh.yml \
	--state=bosh-lite/state.json \		
	--vars-store bosh-lite/creds.yml \	
	-o use-compiled-releases.yml \
	-o virtualbox/cpi.yml \			
	-o virtualbox/outbound-network.yml \
	-o bosh-lite.yml \
	-o use-compiled-releases-bosh-lite.yml \
	-o uaa.yml \
	-o use-compiled-releases-uaa.yml \
	-o credhub.yml \
	-o use-compiled-releases-credhub.yml \
	-o jumpbox-user.yml \
	-o use-compiled-releases-jumpbox.yml \
	-l vars-bosh-lite.yml
