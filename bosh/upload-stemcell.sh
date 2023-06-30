#!/bin/bash
BIONIC_STEMCELL_VERSION=1.195
JAMMY_STEMCELL_VERSION=1.108
CURRENT_IAAS="${CURRENT_IAAS}"                                   # IaaS Information (PaaS-TA에서 제공되는 create-bosh-login.sh 미 사용시 aws/azure/gcp/openstack/vsphere/bosh-lite 입력)
BOSH_ENVIRONMENT="${BOSH_ENVIRONMENT}"                   # bosh director alias name (PaaS-TA에서 제공되는 create-bosh-login.sh 미 사용시 bosh envs에서 이름을 확인하여 입력)

if [[ ${CURRENT_IAAS} = "aws" ]]; then
        bosh -e ${BOSH_ENVIRONMENT} upload-stemcell https://storage.googleapis.com/bosh-core-stemcells/${BIONIC_STEMCELL_VERSION}/bosh-stemcell-${BIONIC_STEMCELL_VERSION}-aws-xen-hvm-ubuntu-bionic-go_agent.tgz -n
        bosh -e ${BOSH_ENVIRONMENT} upload-stemcell https://storage.googleapis.com/bosh-core-stemcells/${JAMMY_STEMCELL_VERSION}/bosh-stemcell-${JAMMY_STEMCELL_VERSION}-aws-xen-hvm-ubuntu-jammy-go_agent.tgz -n
elif [[ ${CURRENT_IAAS} = "azure" ]]; then
        bosh -e ${BOSH_ENVIRONMENT} upload-stemcell https://storage.googleapis.com/bosh-core-stemcells/${BIONIC_STEMCELL_VERSION}/bosh-stemcell-${BIONIC_STEMCELL_VERSION}-azure-hyperv-ubuntu-bionic-go_agent.tgz -n
        bosh -e ${BOSH_ENVIRONMENT} upload-stemcell https://storage.googleapis.com/bosh-core-stemcells/${JAMMY_STEMCELL_VERSION}/bosh-stemcell-${JAMMY_STEMCELL_VERSION}-azure-hyperv-ubuntu-jammy-go_agent.tgz -n
elif [[ ${CURRENT_IAAS} = "gcp" ]]; then
        bosh -e ${BOSH_ENVIRONMENT} upload-stemcell https://storage.googleapis.com/bosh-core-stemcells/${BIONIC_STEMCELL_VERSION}/bosh-stemcell-${BIONIC_STEMCELL_VERSION}-google-kvm-ubuntu-bionic-go_agent.tgz -n
        bosh -e ${BOSH_ENVIRONMENT} upload-stemcell https://storage.googleapis.com/bosh-core-stemcells/${JAMMY_STEMCELL_VERSION}/bosh-stemcell-${JAMMY_STEMCELL_VERSION}-google-kvm-ubuntu-jammy-go_agent.tgz -n
elif [[ ${CURRENT_IAAS} = "openstack" ]]; then
        bosh -e ${BOSH_ENVIRONMENT} upload-stemcell https://storage.googleapis.com/bosh-core-stemcells/${BIONIC_STEMCELL_VERSION}/bosh-stemcell-${BIONIC_STEMCELL_VERSION}-openstack-kvm-ubuntu-bionic-go_agent.tgz -n
        bosh -e ${BOSH_ENVIRONMENT} upload-stemcell https://storage.googleapis.com/bosh-core-stemcells/${JAMMY_STEMCELL_VERSION}/bosh-stemcell-${JAMMY_STEMCELL_VERSION}-openstack-kvm-ubuntu-jammy-go_agent.tgz -n
elif [[ ${CURRENT_IAAS} = "vsphere" ]]; then
        bosh -e ${BOSH_ENVIRONMENT} upload-stemcell https://storage.googleapis.com/bosh-core-stemcells/${BIONIC_STEMCELL_VERSION}/bosh-stemcell-${BIONIC_STEMCELL_VERSION}-vsphere-esxi-ubuntu-bionic-go_agent.tgz -n
        bosh -e ${BOSH_ENVIRONMENT} upload-stemcell https://storage.googleapis.com/bosh-core-stemcells/${JAMMY_STEMCELL_VERSION}/bosh-stemcell-${JAMMY_STEMCELL_VERSION}-vsphere-esxi-ubuntu-jammy-go_agent.tgz -n
elif [[ ${CURRENT_IAAS} = "bosh-lite" ]]; then
        bosh -e ${BOSH_ENVIRONMENT} upload-stemcell https://storage.googleapis.com/bosh-core-stemcells/${BIONIC_STEMCELL_VERSION}/bosh-stemcell-${BIONIC_STEMCELL_VERSION}-warden-boshlite-ubuntu-bionic-go_agent.tgz -n
        bosh -e ${BOSH_ENVIRONMENT} upload-stemcell https://storage.googleapis.com/bosh-core-stemcells/${JAMMY_STEMCELL_VERSION}/bosh-stemcell-${JAMMY_STEMCELL_VERSION}-warden-boshlite-ubuntu-jammy-go_agent.tgz -n
else
        echo "plz check CURRENT_IAAS"
fi
