#!/bin/sh
if ! whoami &> /dev/null; then
  if [ -w /etc/passwd ]; then
    echo "openvpn:x:$(id -u):0:openVPN:${HOME}:/sbin/nologin" >> /etc/passwd
  fi
fi
exec "$@"