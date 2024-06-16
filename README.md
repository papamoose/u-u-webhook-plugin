# u-u-webhook-plugin
A plugin for apt [unattended-upgrades](https://github.com/mvo5/unattended-upgrades) to send u-u notifications via webhook using the [Apprise](https://github.com/caronc/apprise) python module.

## Install

Ensure you are running [u-u v2.11+](https://github.com/mvo5/unattended-upgrades/tags). Your distro may or may not have it in its repository already.

### Makefile
Manual installtion can be derived from this make file.
```
make installplugin
```

### Debian Package

This is a work in progress. 

```
make deb
```
