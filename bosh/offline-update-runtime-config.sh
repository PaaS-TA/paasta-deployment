#!/bin/bash

BOSH_ENVIRONMENT="${BOSH_ENVIRONMENT}"			 # bosh director alias name (PaaS-TA에서 제공되는 create-bosh-login.sh 미 사용시 bosh envs에서 이름을 확인하여 입력)
RELEASE_DIR="/home/ubuntu/workspace/paasta-5.5.1/release" # Release Directory (offline으로 릴리즈 다운받아 사용시 설정)

bosh -e ${BOSH_ENVIRONMENT} update-runtime-config -n runtime-configs/dns-offline.yml \
		-v releases_dir=${RELEASE_DIR}
bosh -e ${BOSH_ENVIRONMENT} update-runtime-config -n --name=os-conf runtime-configs/os-conf-offline.yml \
		-v releases_dir=${RELEASE_DIR}
