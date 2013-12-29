packer-templates
================

Templates for [Packer](http://www.packer.io/)

Prerequisites
=============

On OS X Packer is available via [Homebrew](http://brew.sh/)

```
$ brew tap homebrew/binary
$ brew install packer
```

Usage
=====

To build e.g. the [CentOS](http://www.centos.org/) 6 template with [VirtualBox](https://www.virtualbox.org/) (which will produce a [Vagrant](http://www.vagrantup.com/) box):

```
$ packer build -only=virtualbox template.json
```

