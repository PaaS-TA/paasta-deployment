#!/bin/bash

BOSH_ENVIRONMENT= "${BOSH_ENVIRONMENT}"			 # bosh director alias name (PaaS-TA에서 제공되는 create-bosh-login.sh 미 사용시 bosh envs에서 이름을 확인하여 입력)

bosh -e micro-bosh -d paasta -n deploy paasta-deployment.yml \
	-o operations/aws.yml \
	-o operations/use-compiled-releases-online.yml \
	-o operations/use-haproxy.yml \
	-o operations/use-haproxy-public-network.yml \
	-o operations/use-compiled-releases-haproxy-online.yml \
	-o operations/use-postgres.yml \
	-o operations/use-compiled-releases-postgres-online.yml \
	-o operations/rename-network-and-deployment.yml \
	-o operations/use-external-blobstore.yml \
	-o operations/use-s3-blobstore.yml \
	-l operations/example-vars-files/vars-use-external-blobstore.yml \
	-l operations/example-vars-files/vars-use-s3-blobstore.yml \
	-l aws-vars.yml \
	-l ../../common/common_vars.yml
