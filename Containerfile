FROM registry.fedoraproject.org/fedora:33
LABEL description="This is a fedora 33 container image with shellcheck"
MAINTAINER Martin Bukatovic <mbukatov@redhat.com>
RUN dnf install -y shellcheck \
    && dnf clean all \
    && rm -rf /var/cache/dnf
