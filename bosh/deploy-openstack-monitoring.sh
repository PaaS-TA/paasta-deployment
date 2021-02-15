#!/bin/bash

bosh create-env bosh.yml \
	--state=openstack/state.json \
	--vars-store=openstack/creds.yml \
	-o openstack/cpi.yml \
	-o uaa.yml \
	-o credhub.yml \
	-o jumpbox-user.yml \
	-o openstack/disable-readable-vm-names.yml \
	-o syslog.yml \
	-o paasta-addon/paasta-monitoring-agent.yml \
	-l openstack-vars.yml
