(

  prepare_install  &&
  mkdir -p /lib/firmware  &&
  install -m 644 iwlwifi-6000-4.ucode /lib/firmware/  &&
  gather_docs README.iwlwifi-6000-ucode

) > $C_FIFO 2>&1
