(
  for option in \
      DNET_PCAP \
      DRIVER_{HOSTAP,PRISM54,NDISWRAPPER,ATMEL,WEXT,IPW,WIRED} \
      WIRELESS_EXTENSION IEEE8021X_EAPOL MSCHAPV2 \
      EAP_{MD5,TLS,PEAP,TTLS,GTC,OTP,SIM,AKA,PSK,LEAP}
  do
    echo "CONFIG_${option}=y" >> .config
  done &&

  make &&
  prepare_install &&
  install -m755 wpa_supplicant wpa_cli wpa_passphrase /usr/bin/ &&

  gather_docs developer.txt wpa_supplicant.conf

) > $C_FIFO 2>&1
