#!/bin/sh

cp ansible-*path /etc/systemd/system
cp ansible-*service /etc/systemd/system
adduser -d /ansible ansible
mkdir ~ansible/staging
cp /etc/hosts ~ansible/staging/hosts
cp /etc/hosts.allow ~ansible/staging/hosts.allow
cp /etc/slurm/slurm.conf ~ansible/staging/slurm.conf
systemctl enable ansible-hosts.path
systemctl enable ansible-hosts.path
systemctl enable ansible-hosts-allow.path
systemctl start ansible-slurm.path
systemctl start ansible-hosts-allow.path
systemctl start ansible-slurm.path


