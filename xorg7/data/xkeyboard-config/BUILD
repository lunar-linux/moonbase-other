(

  # Fixes warning for Polish keyboard layout
  sedit 's/ralt_switch)/ralt_switch_multikey)/' symbols/pl &&

  . /etc/profile.d/x11r7.rc &&

  OPTS+=" --with-xkb-base=/usr/share/X11/xkb --enable-compat-rules \
          --with-xkb-rules-symlink=xorg" &&

  default_build

) > $C_FIFO 2>&1
