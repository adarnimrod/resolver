#!/bin/sh
set -eu
service kresd start
echo 'nameserver 127.0.0.1' > /etc/resolv.conf
eval "exec $@"
