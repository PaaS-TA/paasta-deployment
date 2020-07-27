#!/bin/bash

bosh delete-env -n bosh.yml \
	--state=vsphere/state.json \
	--vars-store=vsphere/creds.yml \
	-o vsphere/cpi.yml \
	-o uaa.yml  \
	-o credhub.yml  \
	-o jumpbox-user.yml  \
	-l vsphere-vars.yml
