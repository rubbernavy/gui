#!/bin/bash

TSTAMP=$(date +%Y%m%d%H%M) &&
WORK_DIR=$(mktemp -d) &&
vagrant destroy -f &&
vagrant provision &&
vagrant up &&
sleep 30s &&
vagrant halt &&
vagrant up &&
sleep 30s &&
vagrant halt &&
vagrant up &&
sleep 30s &&
vagrant halt &&
vagrant package --output ${WORK_DIR}/personal.${TSTAMP}.box &&
vagrant box add --name personal.${TSTAMP} ${WORK_DIR}/personal.${TSTAMP}.box &&
vagrant halt &&
rm -rf personal.${TSTAMP}.box &&
true
