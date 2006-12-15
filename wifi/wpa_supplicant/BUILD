(
  for option in \
  CONFIG_DNET_PCAP=y \
  CONFIG_DRIVER_HOSTAP=y \
  CONFIG_DRIVER_PRISM54=y \
  CONFIG_DRIVER_NDISWRAPPER=y \
  CONFIG_DRIVER_ATMEL=y \
  CONFIG_DRIVER_WEXT=y \
  CONFIG_DRIVER_IPW=y \
  CONFIG_WIRELESS_EXTENSION=y \
  CONFIG_IEEE8021X_EAPOL=y \
  CONFIG_EAP_MD5=y \
  CONFIG_MSCHAPV2=y \
  CONFIG_EAP_TLS=y \
  CONFIG_EAP_PEAP=y \
  CONFIG_EAP_TTLS=y \
  CONFIG_EAP_GTC=y \
  CONFIG_EAP_OTP=y \
  CONFIG_EAP_SIM=y \
  CONFIG_EAP_AKA=y \
  CONFIG_EAP_PSK=y \
  CONFIG_EAP_LEAP=y; do
	echo $option >> .config;
  done &&
  
  make  &&
  prepare_install  &&
  install -m755 wpa_supplicant wpa_cli wpa_passphrase /usr/bin	&&

  gather_docs developer.txt wpa_supplicant.conf 

) > $C_FIFO 2>&1
