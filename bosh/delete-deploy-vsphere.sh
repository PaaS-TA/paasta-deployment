#!/bin/bash

bosh delete-env -n bosh.yml \
	--state=vsphere/state.json \
	--vars-store=vsphere/creds.yml \
	-o use-compiled-releases.yml \
	-o vsphere/cpi.yml \
	-o use-compiled-releases-vsphere.yml \
	-o uaa.yml  \
	-o use-compiled-releases-uaa.yml \
	-o credhub.yml  \
	-o use-compiled-releases-credhub.yml \
	-o jumpbox-user.yml  \
	-o use-compiled-releases-jumpbox.yml \
	-l vars-vsphere.yml
