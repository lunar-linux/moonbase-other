./autogen &&

default_build &&

prepare_install &&
install -m 750 ddclient /usr/bin/ddclient &&
mkdir -p /etc/ddclient /var/cache/ddclient &&

if [ ! -e /etc/ddclient/ddclient.conf ]; then
  install -m 640 ddclient.conf /etc/ddclient/ddclient.conf
fi &&

if [ -e /etc/ddclient.conf ]; then
  message "${PROBLEM_COLOR}Please move /etc/ddclient.conf to /etc/ddclient/${DEFAULT_COLOR}"
fi
