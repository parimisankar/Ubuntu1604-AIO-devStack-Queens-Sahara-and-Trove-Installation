# This script will install vim, git and ntp, update and upgrade packages, then clones devstack in /devstack folder, creates a user "stack" with sudo privileges and logs in as user "stack".
#! /bin/bash
sudo apt-get install vim git ntp \
&& sudo apt-get update \
&& sudo apt-get upgrade \
&& cd / \
&& sudo git clone https://git.openstack.org/openstack-dev/devstack \
&& cd devstack/ \
&& sudo /devstack/tools/create-stack-user.sh \
&& sudo chown -R stack:stack /devstack \
&& sudo su -l stack
