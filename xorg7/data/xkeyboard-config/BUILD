(
  . /etc/profile.d/x11r7.rc &&
  
  OPTS+="--with-xkb-base=/usr/share/X11/xkb --enable-compat-rules \
         --disable-xkbcomp-symlink --with-xkb-rules-symlink=xorg" &&
  
  default_build

) > $C_FIFO 2>&1
