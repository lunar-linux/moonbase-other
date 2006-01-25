(
  sedit "s/#TARGET_ARCH = desktop/TARGET_ARCH = desktop/" makefiles/target.mk &&
  sedit "s/#UI_TYPE = gtk/UI_TYPE = gtk/" makefiles/target.mk
  make INSTALLDIR=/usr &&
  prepare_install &&
  make INSTALLDIR=/usr install &&
  ln -sf /usr/bin/FBReader /usr/bin/fbreader
  
) > $C_FIFO 2>&1
