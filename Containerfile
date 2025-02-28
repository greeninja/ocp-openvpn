FROM registry.redhat.io/ubi8/ubi

RUN rpm -ivh https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
RUN dnf install -y openvpn easy-rsa

ENTRYPOINT [ "sleep 600" ]