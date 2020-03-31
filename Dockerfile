FROM fedora
MAINTAINER Madd Sauer

RUN dnf -y update && \
  dnf -y install \
    GraphicsMagick \
    ImageMagick \
    atop \
    bind-utils \
    cifs-utils \
    dos2unix \
    fuse-sshfs \
    ghostscript \
    gnupg2 \
    htop \
    iotop \
    jwhois \
    mutt \
    nfs-utils \
    openssh-askpass \
    openssh-clients \
    openssh-server \
    openssl \
    rsync \
    samba-client \
    screen \
    sshrc \
    strace \
    stunnel \
    tcpdump \
    testdisk \
    tigervnc \
    tmux \
    tree \
    vim \
    vim-enhanced \
    vim-go \
    x2goclient \
    zip \
    zsh && \
  dnf -y clean all

RUN chown -R 1001 /

USER 1001
#ENTRYPOINT ["/usr/bin/bash"] 
CMD [ "bash", "-c", "trap : TERM INT; sleep infinity & wait" ]

