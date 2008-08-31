(
  patch_it $SOURCE2 1 &&

  if module_installed kdelibs3; then
    . /etc/profile.d/kde3.rc
    OPTS="$OPTS --with-arts"
  fi &&

  OPTS="$OPTS --enable-static --with-xv-path=/usr/X11/lib"

  default_build

) > $C_FIFO 2>&1
