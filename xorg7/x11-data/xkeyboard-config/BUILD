(
  . /etc/profile.d/x11r7.rc &&
  
  OPTS+="--with-xkb-base=/usr/share/X11/xkb --enable-compat-rules \
         --disable-xkbcomp-symlink --with-xkb-rules-symlink=xorg"

  # Otherwise the Makefile fails
  rm -rf $MODULE_PREFIX/share/X11/xkb/compiled &&

  # This directory has to be there.
  mkdir -p /var/lib/xkb

  default_build

) > $C_FIFO 2>&1
