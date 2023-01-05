#!/bin/bash

### Recommend using VirtualBox 6.1.36r152435 or 6.0.24r139119

bosh create-env bosh.yml \
	--state=bosh-lite/state.json \
	--vars-store bosh-lite/creds.yml \
	-o virtualbox/cpi.yml \
	-o virtualbox/outbound-network.yml \
	-o bosh-lite.yml \
	-o uaa.yml \
	-o credhub.yml \
	-o jumpbox-user.yml \
	-l bosh-lite-vars.yml
