sedit "s:/sbin:/bin:" Makefile &&

make &&

prepare_install &&

install -dm0755 /etc/cron.daily &&
install -m0755 atop.daily /etc/cron.daily/atop &&
install -m0755 atop /usr/bin/
