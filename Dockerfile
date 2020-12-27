FROM ubuntu:20.04
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get -y install git
RUN git clone https://github.com/bup/bup
RUN pwd
WORKDIR /bup
RUN apt-get -y install python3-dev python3-fuse
RUN apt-get -y install python3-pyxattr python3-pytest
RUN apt-get -y install python3-distutils
RUN apt-get -y install pkg-config linux-libc-dev libacl1-dev
RUN apt-get -y install gcc make acl attr rsync
RUN apt-get -y install par2 # optional (error correction)
#apt-get install libreadline-dev # optional (bup ftp)
#apt-get install python3-tornado # optional (bup web)
RUN make
#RUN make check
RUN make install
ENTRYPOINT ["/usr/local/bin/bup"]

