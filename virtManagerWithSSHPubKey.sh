#!/bin/bash
virt-manager -c "qemu+ssh://virtmgr@10.224.102.31/system?keyfile=sshPrivateKey" --no-fork
