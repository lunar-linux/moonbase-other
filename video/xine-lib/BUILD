(

  patch_it $SOURCE_CACHE/$SOURCE1 0 &&

  if module_installed kdelibs3; then
  ARTS_CONFIG="${KDE_PREFIX:-/opt/lunar/kde/3}/bin/artsc-config"
  fi &&

  OPTS="$OPTS --enable-static --with-xv-path=/usr/X11/lib"

  default_build

) > $C_FIFO 2>&1
