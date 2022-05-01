prepare_install &&

install -Dm755 bin/pwrstat /usr/bin/pwrstat &&
install -Dm755 bin/pwrstatd /usr/bin/pwrstatd &&

install -Dm755 script/pwrstatd-powerfail.sh /etc/powerpanel/pwrstatd-powerfail.sh &&
install -Dm755 script/pwrstatd-lowbatt.sh /etc/powerpanel/pwrstatd-lowbatt.sh &&
install -Dm755 script/pwrstatd-email.sh /etc/powerpanel/pwrstatd-email.sh &&

install -Dm755 $SCRIPT_DIRECTORY/hibernate.sh /etc/powerpanel/hibernate.sh &&
ln -s powerpanel/hibernate.sh /etc/hibernate.sh &&

install -Dm755 $SCRIPT_DIRECTORY/shutdown.sh /etc/powerpanel/shutdown.sh &&
ln -s powerpanel/shutdown.sh /etc/shutdown.sh &&

install -Dm644 doc/pwrstat.8 /usr/share/man/man8/pwrstat.8 &&
install -Dm644 doc/pwrstatd.8 /usr/share/man/man8/pwrstatd.8 &&

if [ -f "/etc/pwrstatd.conf" ]; then
  install -Dm600 conf/pwrstatd.conf /etc/pwrstatd.conf
fi
