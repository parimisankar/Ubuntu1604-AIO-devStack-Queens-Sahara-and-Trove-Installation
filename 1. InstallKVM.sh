#! /bin/bash
USER=$1
kvm-ok \
&& egrep -c '(vmx|svm)' /proc/cpuinfo \
&& uname -m \
&& sudo apt-get install firefox qemu-kvm libvirt-bin virtinst \
&& sudo adduser $USER libvirtd \
&& sudo adduser $USER kvm
