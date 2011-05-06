(
  
  OLD_DISPLAY=$DISPLAY &&
  unset DISPLAY &&

  make &&
  prepare_install &&
  mkdir -p /usr/share/fonts/xawtv-fonts &&
  install *.pcf.gz -m 444 /usr/share/fonts/xawtv-fonts &&

  DISPLAY=$OLD_DISPLAY &&
  unset OLD_DISPLAY &&

  true

) > $C_FIFO 2>&1
