#!/bin/sh

cp /vagrant/docker.repo /etc/yum.repos.d &&
  dnf install --assumeyes docker-engine &&
  systemctl enable docker.service &&
  systemctl start docker &&
  usermod -aG docker vagrant &&
  docker login --username=emorymerryman --password=simple8 --email emory.merryman@gmail.com &&
  true
