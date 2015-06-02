rpmbuild-fedora-docker
======================

Docker containers with dev tools and rpm tools pre-installed for facilitating the building
of RPMs compatbile with fedora-19.

Also contains pip and virtualenv to facilitate building omnibus/venv-style packages
for python apps.

Docker images
-------------

Images built from this repo are available from quay.io with the fedora version as
the tag, eg:

- `quay.io/getpantheon/rpmbuild-fedora:19`
- `quay.io/getpantheon/rpmbuild-fedora:20`

Deprecation
-----------

This repository supersedes the following individual repos:

- https://github.com/pantheon-systems/rpmbuild-fedora-19
- https://github.com/pantheon-systems/rpmbuild-fedora-20
- https://github.com/pantheon-systems/rpmbuild-fedora-21
