# u-u-webhook-plugin
A plugin for apt [unattended-upgrades](https://github.com/mvo5/unattended-upgrades) to send u-u notifications via webhook using the [Apprise](https://github.com/caronc/apprise) python module.

## Install

1. Ensure you are running u-u v2.11+
2. The `Makefile` contains instructions on how to install manually.

### Makefile

```
make installplugin
```

### Debian Package

This is a work in progress. 

```
make deb
```
