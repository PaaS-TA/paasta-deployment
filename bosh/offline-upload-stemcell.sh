#!/bin/bash
STEMCELL_VERSION=621.94
STEMCELL_DIR="/home/ubuntu/workspace/paasta-5.5/stemcell/paasta"

if [[ ${CURRENT_IAAS} = "aws" ]]; then
        bosh -e ${BOSH_ENVIRONMENT} upload-stemcell ${STEMCELL_DIR}/bosh-stemcell-${STEMCELL_VERSION}-aws-xen-hvm-ubuntu-xenial-go_agent.tgz -n
elif [[ ${CURRENT_IAAS} = "azure" ]]; then
        bosh -e ${BOSH_ENVIRONMENT} upload-stemcell ${STEMCELL_DIR}/bosh-stemcell-${STEMCELL_VERSION}-azure-hyperv-ubuntu-xenial-go_agent.tgz -n
elif [[ ${CURRENT_IAAS} = "gcp" ]]; then
        bosh -e ${BOSH_ENVIRONMENT} upload-stemcell ${STEMCELL_DIR}/bosh-stemcell-${STEMCELL_VERSION}-google-kvm-ubuntu-xenial-go_agent.tgz -n
elif [[ ${CURRENT_IAAS} = "openstack" ]]; then
        bosh -e ${BOSH_ENVIRONMENT} upload-stemcell ${STEMCELL_DIR}/bosh-stemcell-${STEMCELL_VERSION}-openstack-kvm-ubuntu-xenial-go_agent.tgz -n
elif [[ ${CURRENT_IAAS} = "vsphere" ]]; then
        bosh -e ${BOSH_ENVIRONMENT} upload-stemcell ${STEMCELL_DIR}/bosh-stemcell-${STEMCELL_VERSION}-vsphere-esxi-ubuntu-xenial-go_agent.tgz -n
else
        bosh -e ${BOSH_ENVIRONMENT} upload-stemcell ${STEMCELL_DIR}/bosh-stemcell-${STEMCELL_VERSION}-warden-boshlite-ubuntu-xenial-go_agent.tgz -n
fi
