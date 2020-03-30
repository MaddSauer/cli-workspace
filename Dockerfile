FROM fedora
MAINTAINER Madd Sauer

RUN dnf -y update && \
  dnf -y install \
    vim /
    bind-utils  /
    tcpdump /
    zsh && \
  dnf -y clean all

USER 1001
ENTRYPOINT ["/usr/bin/wait"] 
