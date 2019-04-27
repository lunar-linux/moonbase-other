cd hostapd &&

cp defconfig .config &&

make &&
prepare_install &&

# install binaries
install hostapd -m755 /usr/sbin/ &&
install hostapd_cli -m755 /usr/bin/ &&

# install configuration files
install -m644 -t /etc \
        hostapd.{accept,conf,deny,eap_user,radius_clients,sim_db,vlan,wpa_psk} \
                 wired.conf hlr_auc_gw.milenage_db &&
# install man pages
install -Dm644 hostapd.8 /usr/share/man/man8/hostapd.8 &&
install -Dm644 hostapd_cli.1 /usr/share/man/man1/hostapd_cli.1
