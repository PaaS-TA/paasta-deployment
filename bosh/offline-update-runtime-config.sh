#!/bin/bash

bosh -e ${BOSH_ENVIRONMENT} update-runtime-config -n runtime-configs/dns-offline.yml
bosh -e ${BOSH_ENVIRONMENT} update-runtime-config -n --name=os-conf runtime-configs/os-conf-offline.yml
