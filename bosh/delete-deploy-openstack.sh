#!/bin/bash

bosh delete-env -n bosh.yml \
	--state=openstack/state.json \
	--vars-store=openstack/creds.yml \
	-o use-compiled-releases.yml \
	-o openstack/cpi.yml \
	-o use-compiled-releases-openstack.yml \
	-o uaa.yml \
	-o use-compiled-releases-uaa.yml \
	-o credhub.yml \
	-o use-compiled-releases-credhub.yml \
	-o jumpbox-user.yml \
	-o use-compiled-releases-jumpbox.yml \
	-o openstack/disable-readable-vm-names.yml \
	-o syslog.yml \
	-o use-compiled-releases-syslog.yml \
	-o paasta-addon/paasta-monitoring-agent.yml \
	-l vars-openstack.yml

