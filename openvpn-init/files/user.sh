#!/bin/sh
if ! whoami &> /dev/null; then
  if [ -w /etc/passwd ]; then
    sed -i "s,^openvpn.*,openvpn:x:$(id -u):0:openVPN:${HOME}:\/sbin\/nologin," /etc/passwd
  fi
fi
exec "$@"