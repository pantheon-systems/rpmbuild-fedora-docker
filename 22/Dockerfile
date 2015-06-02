FROM fedora:22

WORKDIR /tmp

# basic compiler and linker tools
RUN dnf install -y -d1 @development-tools
# rpmbuild
RUN dnf install -y -d1 rpm-build rpmdevtools redhat-rpm-config fedora-packager
# fpm
RUN dnf install -y -d1 rubygems libffi-devel ruby-devel && gem install fpm --no-rdoc --no-ri
# pip + virtualenv
RUN dnf install -y -d1 python-pip && pip install virtualenv


# The rpmdev-setuptree program will create the ~/rpmbuild directory and a set of subdirectories (e.g. SPECS and BUILD)
RUN rpmdev-setuptree
