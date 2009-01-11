(

  prepare_install  &&
  mkdir -p /lib/firmware  &&
  install -m 644 iwlwifi-5000-*.ucode /lib/firmware/  &&
  gather_docs README.iwlwifi-5000-ucode

) > $C_FIFO 2>&1
