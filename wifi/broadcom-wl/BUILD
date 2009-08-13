(

  FIRMWARE_INSTALL_DIR="/lib/firmware/"

  prepare_install &&
  mkdir -p $FIRMWARE_INSTALL_DIR &&

  cd driver &&
  b43-fwcutter -w $FIRMWARE_INSTALL_DIR wl_apsta_mimo.o

) > $C_FIFO 2>&1
