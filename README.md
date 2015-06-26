rpmbuild-fedora-docker
======================

Docker containers with dev tools and rpm tools pre-installed for facilitating the building
of RPMs compatbile with various fedora releases.

Also contains pip and virtualenv to facilitate building omnibus/venv-style packages
for python apps.

Docker images
-------------

Images built from this repo are available from quay.io with the fedora version as
the tag, eg:

- `quay.io/getpantheon/rpmbuild-fedora:19`
- `quay.io/getpantheon/rpmbuild-fedora:20`
- ... etc ...

Updating Containers
-------------------

Before you are able to push to quay.io, you need to login with `docker login quay.io`, this
will authenticate you and save your creds to `~/.dockercfg`. If you do not have an account
on quay.io or access to the getpantheon org on quay.io, ask for help in the
#infrastructure channel on Slack.

- Running `build.sh` will attempt to build all versions and push them to quay.io.

- If you only want to build a specific version or versions, set the `BUILD_VERSIONS` env
variable, eg:

    BUILD_VERSIONS="19" ./build.sh

    BUILD_VERSIONS="20 22" ./build.sh

Deprecation
-----------

This repository supersedes the following retired repos:

- https://github.com/pantheon-systems/rpmbuild-fedora-19
- https://github.com/pantheon-systems/rpmbuild-fedora-20
- https://github.com/pantheon-systems/rpmbuild-fedora-21
