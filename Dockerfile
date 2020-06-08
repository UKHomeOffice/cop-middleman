FROM digitalpatterns/node

ENV HOME /root

RUN yum -y update && \
    yum -y install procps-ng shadow-utils which gcc44 gcc-c++ libgcc44 cmake curl tar gzip make patch autoconf automake bison bzip2 libffi-devel libtool patch readline-devel ruby sqlite-devel zlib-devel libyaml-devel openssl-devel

RUN /bin/bash -l -c " \
    gpg2 --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB && \
    curl -sSL https://get.rvm.io | bash -s stable --ruby && \
    . /usr/local/rvm/scripts/rvm && \
    gem install middleman"

WORKDIR /app
