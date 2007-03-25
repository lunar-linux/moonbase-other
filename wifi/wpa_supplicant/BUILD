(
  sedit "s/\/usr\/local/\/usr/g" Makefile &&
  sedit "s/dynamic_eap_methods//" Makefile &&

  for option in \
      DNET_PCAP CTRL_IFACE CTRL_IFACE_DBUS \
      DRIVER_{HOSTAP,PRISM54,NDISWRAPPER,ATMEL,WEXT,IPW,WIRED} \
      WIRELESS_EXTENSION IEEE8021X_EAPOL MSCHAPV2 \
      EAP_{MD5,TLS,PEAP,TTLS,GTC,OTP,SIM,AKA,PSK,LEAP}
  do
    echo "CONFIG_${option}=y" >> .config
  done &&

  default_make &&
  install -m644 dbus-wpa_supplicant.conf /etc/dbus-1/system.d/ &&

  gather_docs developer.txt wpa_supplicant.conf

) > $C_FIFO 2>&1
