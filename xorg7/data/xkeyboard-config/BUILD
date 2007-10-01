(
  . /etc/profile.d/x11r7.rc &&
  
  OPTS+="--with-xkb-base=/usr/share/X11/xkb --enable-compat-rules \
         --disable-xkbcomp-symlink --with-xkb-rules-symlink=xorg"
  
  # This should not be needed, check in next release if still needed.
  rm -fr /usr/share/X11/xkb/compiled &&
  mkdir -p /var/lib/xkb &&
  ln -sf /var/lib/xkb /usr/share/X11/xkb/compiled &&

  default_build

) > $C_FIFO 2>&1
