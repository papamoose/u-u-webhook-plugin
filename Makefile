all:
	echo "Please select depends, installplugin, uninstallplugin, or deb"

depends:
	apt-get install -y python3-pip
	python3 -m pip install apprise

installplugin: depends plugin

plugin:
	install -D --mode=0644 ./apprise.py /etc/unattended-upgrades/plugins/apprise.py
	install -D --mode=0644 ./51uu-apprise /etc/apt/apt.conf.d/51uu-apprise

uninstallplugin:
	rm -f /etc/unattended-upgrades/plugins/apprise.py
	rm -f /etc/apt/apt.conf.d/51uu-apprise

deb:
	dpkg-buildpackage -rfakeroot -b -us -uc
