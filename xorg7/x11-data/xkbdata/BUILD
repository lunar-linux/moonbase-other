(
  . /etc/profile.d/x11r7.rc &&

  # Remove installation breakers
  DEL_LST="xorg xorg.lst xorg.xml"
  for plik in $DEL_LST; do
  rm -rf $MODULE_PREFIX/share/X11/xkb/rules/$plik; done &&
  default_build

) > $C_FIFO 2>&1
