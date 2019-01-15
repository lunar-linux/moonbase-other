make &&

prepare_install &&

install -dm0755 /etc/cron.daily &&
install -m0755 atop.daily /etc/cron.daily/atop &&
install -m0755 atop /usr/bin/ &&
install -Dm644 $SCRIPT_DIRECTORY/atop.default /etc/default/atop &&

install man/*.1 /usr/share/man/man1/ &&
install man/*.8 /usr/share/man/man8/
