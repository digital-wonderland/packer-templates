packer-templates
================

Templates for [Packer](http://www.packer.io/)

Prerequisites
=============

On OS X Packer is available via [Homebrew](http://brew.sh/)

```
$ brew install packer
```

Usage
=====

To build e.g. the [CentOS](http://www.centos.org/) 6 template with [VirtualBox](https://www.virtualbox.org/) (which will produce a [Vagrant](http://www.vagrantup.com/) box):

```
$ packer build -only=virtualbox-iso template.json
```

Managing multiple Versions
==========================

Vagrant is able to manage different versions of the same box - i.e. one might have CentOS 6 & 7 boxes. For this one must ```vagrant box add``` a [box catalog metadata](https://docs.vagrantup.com/v2/boxes/format.html) file instead of adding the box file directly.

See bellow for a template where ```$NAME```, ```$VERSION```, ```$PROVIDER``` and ```$PATH_TO_BOX``` must be replaced with their respective values:

```
{
  "name": "$NAME",
  "versions": [{
    "version": "$VERSION",
    "status": "active",
    "providers": [{
      "name": "$PROVIDER",
      "url": "file:///$PATH_TO_BOX"
    }]
  }]
}
```

