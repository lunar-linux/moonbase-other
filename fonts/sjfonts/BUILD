(

  prepare_install &&

  if [ ! -d /usr/share/fonts/sjfonts ] ; then
    mkdir -p /usr/share/fonts/sjfonts
  fi &&

  rm -rf old.libraries &&
  cp -f * /usr/share/fonts/sjfonts

) > $C_FIFO 2>&1
