#!/bin/sh
set -eu
service unbound start
echo 'nameserver 127.0.0.1' > /etc/resolv.conf
exec $@
