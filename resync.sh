#!/bin/sh

systemctl stop ansible-hosts.path
systemctl stop ansible-hosts-allow.path
systemctl stop ansible-slurm.path
mkdir -p ~ansible/staging
cp /etc/hosts ~ansible/staging/hosts
cp /etc/hosts.allow ~ansible/staging/hosts.allow
cp /etc/slurm/slurm.conf ~ansible/staging/slurm.conf
systemctl start ansible-hosts.path
systemctl start ansible-hosts-allow.path
systemctl start ansible-slurm.path
