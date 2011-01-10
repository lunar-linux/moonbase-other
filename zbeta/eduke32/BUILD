(

  # Based on http://aur.archlinux.org/packages.php?ID=14049
  # and http://wiki.eduke32.com/wiki/Building_EDuke32_on_Linux
  make &&

  prepare_install &&

  install -m755 {eduke,mapster}32 /usr/games/

) > $C_FIFO 2>&1
