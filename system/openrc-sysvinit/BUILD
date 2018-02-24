make -C src &&
prepare_install &&
make -C src install &&
install -m0755 $SCRIPT_DIRECTORY/service /usr/bin/service &&
install -dm 755 {/etc/init.d,/var/{run,log}} &&

# the rest should be safe now:
if [ ! -e /etc/inittab ]; then
  install -m0600 $SCRIPT_DIRECTORY/inittab /etc/
fi &&

for SCRIPT in halt rc rcS reboot signals bootmisc; do
  if [ ! -e /etc/init.d/$SCRIPT ]; then
    install -m0755 $SCRIPT_DIRECTORY/openrc/init.d/$SCRIPT /etc/init.d/
  fi
done &&

touch /var/run/utmp /var/log/{w,b}tmp /var/log/lastlog &&
chmod 644 /var/run/utmp /var/log/wtmp /var/log/lastlog &&
chmod 600 /var/log/btmp
