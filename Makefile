all:
	echo "Please select depends, installplugin, uninstallplugin, or deb"

depends:
	apt-get install -y python3-pip
	python3 -m pip install apprise

installplugin: depends plugin

plugin:
	install -D --mode=0644 ./webhook_send.py /etc/unattended-upgrades/plugins/webhook_send.py
	install -D --mode=0644 ./51uu-webhook /etc/apt/apt.conf.d/51uu-webhook

uninstallplugin:
	rm -f /etc/unattended-upgrades/plugins/webhook_send.py
	rm -f /etc/apt/apt.conf.d/51uu-webhook

deb:
	dpkg-buildpackage -rfakeroot -b -us -uc
