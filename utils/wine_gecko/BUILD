(

  if [ ! -f /usr/share/wine/gecko ] ; then
    mkdir -p /usr/share/wine/gecko
  fi &&

  prepare_install &&

  cp -R wine_gecko/* /usr/share/wine/gecko/

) > $C_FIFO 2>&1
