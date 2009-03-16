(

  ./configure --x11dir=/usr/share/fonts/terminus  &&
  make  psf          &&
  prepare_install    &&
  make  install-psf  &&
  make  txt          &&
  if 'module_installed kbd'; then
      make  install-uni
    else
      make  install-acm
  fi
) > $C_FIFO 2>&1
