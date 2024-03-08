#!/bin/sh
set -eo pipefail
shopt -s nullglob

if [ -f "/etc/init.d/asb" ] ; then
    /etc/init.d/asb start
else
    echo "ASB is not install."
fi

exec sleep infinity