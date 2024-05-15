# u-u-webhook-plugin
A plugin for apt unattended-upgrade to send u-u notifications via webhook using the apprise module.

## Install

As of 2024-02-27 grab the latest commit from the master branch of mvo5/unattended-upgrade repo
and copy the unattended-upgrade script overtop of the one provided by your distro.

Usually `apt-get install -y unattended-upgrade`.

Then checkout this repo and run `sudo make`.

Then edit `/etc/apt/apt.conf.d/51uu-apprise` to your liking.
