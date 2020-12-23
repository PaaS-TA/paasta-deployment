#!/bin/bash

director_name="micro-bosh"

bosh -e ${director_name} update-runtime-config -n runtime-configs/dns.yml
bosh -e ${director_name} update-runtime-config -n --name=os-conf runtime-configs/os-conf.yml
