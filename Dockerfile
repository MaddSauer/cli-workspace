FROM fedora
MAINTAINER Madd Sauer

RUN dnf -y update && \
  dnf -y install \
    vim \
    bind-utils \
    tcpdump \
    zsh && \
  dnf -y clean all

USER 1001
#ENTRYPOINT ["/usr/bin/bash"] 
CMD [ "bash", "-c", "trap : TERM INT; sleep infinity & wait" ]
