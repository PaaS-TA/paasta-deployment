#!/bin/bash
BOSH_Director_Name="micro-bosh"
IaaS="aws"
STEMCELL_VERSION=621.94


if [[ ${IaaS} = "aws" ]]; then
        bosh -e ${BOSH_Director_Name} upload-stemcell https://s3.amazonaws.com/bosh-core-stemcells/${STEMCELL_VERSION}/bosh-stemcell-${STEMCELL_VERSION}-aws-xen-hvm-ubuntu-xenial-go_agent.tgz -n
elif [[ ${IaaS} = "azure" ]]; then
        bosh -e ${BOSH_Director_Name} upload-stemcell https://bosh-core-stemcells.s3-accelerate.amazonaws.com/${STEMCELL_VERSION}/bosh-stemcell-${STEMCELL_VERSION}-azure-hyperv-ubuntu-xenial-go_agent.tgz -n
elif [[ ${IaaS} = "gcp" ]]; then
        bosh -e ${BOSH_Director_Name} upload-stemcell https://bosh-core-stemcells.s3-accelerate.amazonaws.com/${STEMCELL_VERSION}/bosh-stemcell-${STEMCELL_VERSION}-google-kvm-ubuntu-xenial-go_agent.tgz -n
elif [[ ${IaaS} = "openstack" ]]; then
        bosh -e ${BOSH_Director_Name} upload-stemcell https://s3.amazonaws.com/bosh-core-stemcells/${STEMCELL_VERSION}/bosh-stemcell-${STEMCELL_VERSION}-openstack-kvm-ubuntu-xenial-go_agent.tgz -n
elif [[ ${IaaS} = "vsphere" ]]; then
        bosh -e ${BOSH_Director_Name} upload-stemcell https://s3.amazonaws.com/bosh-core-stemcells/${STEMCELL_VERSION}/bosh-stemcell-${STEMCELL_VERSION}-vsphere-esxi-ubuntu-xenial-go_agent.tgz -n
else
        bosh -e ${BOSH_Director_Name} upload-stemcell https://s3.amazonaws.com/bosh-core-stemcells/${STEMCELL_VERSION}/bosh-stemcell-${STEMCELL_VERSION}-warden-boshlite-ubuntu-xenial-go_agent.tgz -n
fi
