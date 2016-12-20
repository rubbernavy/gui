#!/bin/sh

dnf install --assumeyes kernel-devel &&
  dnf install --assumeyes gcc &&
  dnf install --assumeyes wget &&
  cd $(mktemp -d) &&
  wget -c http://download.virtualbox.org/virtualbox/5.1.6/VBoxGuestAdditions_5.1.6.iso &&
  MOUNT_DIR=$(mktemp -d) &&
  mount VBoxGuestAdditions_5.1.6.iso -o loop ${MOUNT_DIR} &&
  sh ${MOUNT_DIR}/VBoxLinuxAdditions.run --nox11 &&
  true
