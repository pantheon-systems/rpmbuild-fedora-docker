FROM quay.io/getpantheon/fedora:22

WORKDIR /tmp

# basic compiler and linker tools
RUN dnf install -y -d1 @development-tools \
# rpmbuild \
  sudo \
  rpm-build \
  rpmdevtools \
  redhat-rpm-config \
  fedora-packager \
# fpm deps \
  rubygems \
  libffi-devel \
  ruby-devel \
# pip + virtualenv \
  python-pip \
&& pip install virtualenv \
# install fpm \
&& gem install fpm --no-rdoc --no-ri \
# The rpmdev-setuptree program will create the ~/rpmbuild directory and a set of subdirectories (e.g. SPECS and BUILD) \
&& rpmdev-setuptree \
# clean up the cache \
&& dnf clean all \
&& rpm --rebuilddb

# for builds that may need a user
RUN useradd -ms /bin/bash -d /work builder
RUN echo "builder ALL = NOPASSWD:ALL" >> /etc/sudoers.d/builder
