#!/bin/sh

rm -rf /etc/systemd/system/default.target &&
  ln -s /lib/systemd/system/graphical.target /etc/systemd/system/default.target &&
  dnf groupinstall --assumeyes "Basic Desktop" &&
  dnf groupinstall --assumeyes "Fedora Workstation" &&
  true
