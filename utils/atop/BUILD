make &&

prepare_install &&

install -dm0755 /etc/cron.daily &&
install -m0755 atop.daily /etc/cron.daily/atop &&
install -m0755 atop /usr/bin/ &&
install -Dm644 $SCRIPT_DIRECTORY/atop.default /etc/default/atop
