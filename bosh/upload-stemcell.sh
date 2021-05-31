#!/bin/bash
STEMCELL_VERSION=621.125
CURRENT_IAAS="${CURRENT_IAAS}"					 # IaaS Information (PaaS-TA에서 제공되는 create-bosh-login.sh 미 사용시 aws/azure/gcp/openstack/vsphere 입력)
BOSH_ENVIRONMENT="${BOSH_ENVIRONMENT}"			 # bosh director alias name (PaaS-TA에서 제공되는 create-bosh-login.sh 미 사용시 bosh envs에서 이름을 확인하여 입력)

if [[ ${CURRENT_IAAS} = "aws" ]]; then
        bosh -e ${BOSH_ENVIRONMENT} upload-stemcell https://s3.amazonaws.com/bosh-core-stemcells/${STEMCELL_VERSION}/bosh-stemcell-${STEMCELL_VERSION}-aws-xen-hvm-ubuntu-xenial-go_agent.tgz -n
elif [[ ${CURRENT_IAAS} = "azure" ]]; then
        bosh -e ${BOSH_ENVIRONMENT} upload-stemcell https://bosh-core-stemcells.s3-accelerate.amazonaws.com/${STEMCELL_VERSION}/bosh-stemcell-${STEMCELL_VERSION}-azure-hyperv-ubuntu-xenial-go_agent.tgz -n
elif [[ ${CURRENT_IAAS} = "gcp" ]]; then
        bosh -e ${BOSH_ENVIRONMENT} upload-stemcell https://bosh-core-stemcells.s3-accelerate.amazonaws.com/${STEMCELL_VERSION}/bosh-stemcell-${STEMCELL_VERSION}-google-kvm-ubuntu-xenial-go_agent.tgz -n
elif [[ ${CURRENT_IAAS} = "openstack" ]]; then
        bosh -e ${BOSH_ENVIRONMENT} upload-stemcell https://s3.amazonaws.com/bosh-core-stemcells/${STEMCELL_VERSION}/bosh-stemcell-${STEMCELL_VERSION}-openstack-kvm-ubuntu-xenial-go_agent.tgz -n
elif [[ ${CURRENT_IAAS} = "vsphere" ]]; then
        bosh -e ${BOSH_ENVIRONMENT} upload-stemcell https://s3.amazonaws.com/bosh-core-stemcells/${STEMCELL_VERSION}/bosh-stemcell-${STEMCELL_VERSION}-vsphere-esxi-ubuntu-xenial-go_agent.tgz -n
else
        bosh -e ${BOSH_ENVIRONMENT} upload-stemcell https://s3.amazonaws.com/bosh-core-stemcells/${STEMCELL_VERSION}/bosh-stemcell-${STEMCELL_VERSION}-warden-boshlite-ubuntu-xenial-go_agent.tgz -n
fi
