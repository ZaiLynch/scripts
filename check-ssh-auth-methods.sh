#!/bin/bash
HOST_TO_CONNECT="$1"
ssh -p ${2:-22} -o PreferredAuthentications=foo -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -o ConnectTimeout=1 -v -l root $HOST_TO_CONNECT 2>&1 | grep ' Server host key\| Connecting to \| Authentications that can'
