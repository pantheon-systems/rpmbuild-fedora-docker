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

- `quay.io/getpantheon/rpmbuild-fedora:22`
- ... etc ...

Updating Containers
-------------------

Before you are able to push to quay.io, you need to login with `docker login quay.io`, this
will authenticate you and save your creds to `~/.dockercfg`. If you do not have an account
on quay.io or access to the getpantheon org on quay.io.

- Running `make all` will attempt to build all versions and push them to quay.io.
- If you only want to build a specific version or versions, set the `VERSIONS` make
variable, eg:

    make all VERSIONS="22"

    make build VERSIONS="20 22"

- If you just want a local build invoke `make build`
- use `make` without args to get a list of tasks
