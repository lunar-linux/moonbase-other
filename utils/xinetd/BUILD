if [ -e "/etc/init.d/xinetd.sh" ]; then
  rm -f /etc/init.d/xinetd.sh /etc/rc?.d/???xinetd.sh
fi &&

default_config &&
mkdir -p /var/log/xinetd /etc/xinetd &&
default_make &&

if [ ! -f /etc/xinetd.conf ]; then
  echo "includedir /etc/xinetd.d" > /etc/xinetd.conf
fi &&

install -m644 $SCRIPT_DIRECTORY/files/xinetd.conf /etc/ &&
install -Dm644 $SCRIPT_DIRECTORY/files/servers /etc/xinetd.d/servers &&
install -m644 $SCRIPT_DIRECTORY/files/services /etc/xinetd.d/services
