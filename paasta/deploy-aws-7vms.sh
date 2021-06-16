#!/bin/bash
BOSH_ENVIRONMENT="${BOSH_ENVIRONMENT}"                   # bosh director alias name (PaaS-TA에서 제공되는 create-bosh-login.sh 미 사용시 bosh envs에서 이름을 확인하여 입력)

bosh -e ${BOSH_ENVIRONMENT} -d paasta -n deploy min-paasta-deployment.yml \
        -o operations/min-aws.yml \
        -o operations/min-create-vm-singleton-blobstore.yml \
        -o operations/min-create-vm-tcp-router.yml \
        -o operations/min-use-haproxy.yml \
        -o operations/use-haproxy-public-network.yml \
        -o operations/min-use-postgres.yml \
        -o operations/min-rename-network-and-deployment.yml \
        -o operations/min-option-network-and-deployment.yml \
        -o operations/min-cce-postgres.yml \
        -l min-vars.yml \
        -l ../../common/common_vars.yml
