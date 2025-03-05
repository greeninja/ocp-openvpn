#!/bin/sh
if ! whoami &> /dev/null; then
  if [ -w /etc/passwd ]; then
    sed "s,^openvpn.*,openvpn:x:$(id -u):0:openVPN:${HOME}:\/sbin\/nologin," /etc/passwd > /tmp/passwd
    cat /tmp/passwd > /etc/passwd
    rm /tmp/passwd
  fi
fi
exec "$@"