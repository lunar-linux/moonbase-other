OPTS+=" --disable-static \
        --disable-tests  \
        --with-greeter-user=lightdm \
        --with-greeter-session=lightdm-gtk-greeter"

add_priv_user lightdm:lightdm -d /var/lib/lightdm -g lightdm -s /sbin/nologin &&
default_build &&

install -dm0755 /var/cache/lightdm &&
install -dm0770 /var/lib/lightdm{,-data} &&
install -dm0711 /var/log/lightdm &&
chmod +t /var/{cache/lightdm,lib/lightdm{,-data}} &&
chown -R lightdm:lightdm /var/lib/lightdm{,-data} &&
chgrp lightdm /var/log/lightdm &&
install -m0755 $SCRIPT_DIRECTORY/Xsession /etc/lightdm/
