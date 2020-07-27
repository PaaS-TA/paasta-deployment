#!/bin/bash

bosh delete-env -n bosh.yml \
	--state=openstack/state.json \
	--vars-store=openstack/creds.yml \
	-o openstack/cpi.yml \
	-o uaa.yml \
	-o credhub.yml \
	-o jumpbox-user.yml \
	-o openstack/disable-readable-vm-names.yml \
	-l openstack-vars.yml
