(

  make SUPPORT_ALSA=1
  prepare_install &&
  # The Makefile is a bit barfed so the below line will both
  # "make" and "make install" with SUPPORT_ALSA set.
  make install SUPPORT_ALSA=1

) > $C_FIFO 2>&1
