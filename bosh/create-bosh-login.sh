#!/bin/bash

BOSH_DEPLOYMENT_PATH="~/workspace/paasta-5.5.1/deployment/paasta-deployment/bosh" # (e.g. ~/workspace/paasta-5.5.1/deployment/paasta-deployment/bosh)
CURRENT_IAAS="aws"						# (e.g. aws/azure/gcp/openstack/vsphere/bosh-lite)
BOSH_IP="10.0.1.6"						# (e.g. 10.0.1.6)
BOSH_CLIENT_ADMIN_ID="admin"			# (e.g. admin)
BOSH_ENVIRONMENT="micro-bosh"			# (e.g. micro-bosh)
BOSH_LOGIN_FILE_PATH="/home/ubuntu/.env"			# (e.g. /home/ubuntu/.env)
BOSH_LOGIN_FILE_NAME="micro-bosh-login-env"	# (e.g. micro-bosh-login-env)

mkdir -p ${BOSH_LOGIN_FILE_PATH}
echo 'export CRED_PATH='${BOSH_DEPLOYMENT_PATH}'
export CURRENT_IAAS='${CURRENT_IAAS}'
export BOSH_CA_CERT=$(bosh int $CRED_PATH/$CURRENT_IAAS/creds.yml --path /director_ssl/ca)
export BOSH_CLIENT='${BOSH_CLIENT_ADMIN_ID}'
export BOSH_CLIENT_SECRET=$(bosh int $CRED_PATH/$CURRENT_IAAS/creds.yml --path /admin_password)
export BOSH_ENVIRONMENT='${BOSH_ENVIRONMENT}'


bosh alias-env $BOSH_ENVIRONMENT -e '${BOSH_IP}' --ca-cert <(bosh int $CRED_PATH/$CURRENT_IAAS/creds.yml --path /director_ssl/ca)

export CREDHUB_CLIENT=credhub-admin
export CREDHUB_SECRET=$(bosh int --path /credhub_admin_client_secret $CRED_PATH/$CURRENT_IAAS/creds.yml)
export CREDHUB_CA_CERT=$(bosh int --path /credhub_tls/ca $CRED_PATH/$CURRENT_IAAS/creds.yml)

credhub login -s https://'${BOSH_IP}':8844 --skip-tls-validation

' > ${BOSH_LOGIN_FILE_PATH}/${BOSH_LOGIN_FILE_NAME}
