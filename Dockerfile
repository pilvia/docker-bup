FROM ubuntu:20.04
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install --no-install-recommends --yes \
    python3-dev python3 python3-fuse \
    python3-pyxattr python3-pytest \
    python3-distutils \
    pkg-config linux-libc-dev libacl1-dev \
    gcc make acl attr rsync \
    par2 \
    git ca-certificates \
    && rm -rf /var/lib/apt/lists/* \
    && git clone https://github.com/bup/bup \
    && cd /bup \
    && make \
    && make install \
    && apt-get purge -y --auto-remove gcc make python3-dev python3-pytest acl attr python3-distutils pkg-config linux-libc-dev libacl1-dev

ENTRYPOINT ["/usr/local/bin/bup"]

