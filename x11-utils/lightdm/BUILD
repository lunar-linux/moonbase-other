export MOC5="/usr/lib/qt5/bin/moc"

OPTS+=" --disable-static \
        --disable-tests  \
        --with-greeter-user=lightdm"

#        --with-greeter-session=lightdm-gtk-greeter"

add_priv_user lightdm:lightdm -d /var/lib/lightdm -g lightdm -s /sbin/nologin &&

default_build &&

install -dm0755 /var/cache/lightdm &&
install -dm0770 /var/lib/lightdm{,-data} &&
install -dm0711 /var/log/lightdm &&
chmod +t /var/{cache/lightdm,lib/lightdm{,-data}} &&
chown -R lightdm:lightdm /var/lib/lightdm{,-data} &&
chgrp lightdm /var/log/lightdm &&
install -m0755 $SCRIPT_DIRECTORY/Xsession /etc/lightdm/

# PolicyKit
install -dm 750 -g 102 /usr/share/polkit-1/rules.d &&
install -m 644 $SCRIPT_DIRECTORY/lightdm.rules /usr/share/polkit-1/rules.d/lightdm.rules
