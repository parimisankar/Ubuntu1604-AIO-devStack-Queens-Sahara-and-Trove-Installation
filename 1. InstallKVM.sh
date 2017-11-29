#This script requires a variable USER
#Upon execution, This script installs firefox, KVM, libvirt and virtual installer in the host. 
#It also creates a USER and adds USER to libvirtd and kvm groups.
#! /bin/bash
USER=$1
kvm-ok \
&& egrep -c '(vmx|svm)' /proc/cpuinfo \
&& uname -m \
&& sudo apt-get install firefox qemu-kvm libvirt-bin virtinst \
&& sudo adduser $USER libvirtd \
&& sudo adduser $USER kvm
