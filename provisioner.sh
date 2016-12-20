#!/bin/sh

dnf update --assumeyes &&
  /bin/sh /vagrant/install-virtual-box-extensions.sh &&
  /bin/sh /vagrant/install-docker.sh &&
  /bin/sh /vagrant/install-workstation.sh &&
  dnf remove --assumeyes gnome-initial-setup 
  dnf update --assumeyes &&
  dnf clean all &&
  true
