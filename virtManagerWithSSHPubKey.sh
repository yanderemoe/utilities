#!/bin/bash
eval `ssh-agent -s`
ssh-add privatekey.key
virt-manager -c qemu+ssh://root@172.28.184.1/system
