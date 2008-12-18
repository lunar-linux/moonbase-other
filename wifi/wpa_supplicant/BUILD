(

  sedit "s/\/usr\/local/\/usr/g" Makefile   &&
  sedit "s/dynamic_eap_methods//" Makefile  &&

  for option in \
      DNET_PCAP CTRL_IFACE CTRL_IFACE_DBUS \
      DRIVER_{HOSTAP,PRISM54,NDISWRAPPER,ATMEL,WEXT,IPW,WIRED} \
      WIRELESS_EXTENSION IEEE8021X_EAPOL MSCHAPV2 \
      EAP_{MD5,TLS,PEAP,TTLS,GTC,OTP,SIM,AKA,PSK,LEAP}
  do
    echo "CONFIG_${option}=y" >> .config
  done  &&

  make  &&

  if in_depends $MODULE qt3 ; then
    . /etc/profile.d/qt3.rc
    make wpa_gui
  fi  &&

  prepare_install  &&
  make install     &&

  if in_depends $MODULE qt3 ; then
    install -m755 wpa_gui/wpa_gui /usr/bin
  fi  &&

  install -m644 dbus-wpa_supplicant.conf /etc/dbus-1/system.d/  &&
  install -m644 wpa_supplicant.conf /etc/wpa_supplicant.conf.example  &&  

  gather_docs developer.txt wpa_supplicant.conf

) > $C_FIFO 2>&1
