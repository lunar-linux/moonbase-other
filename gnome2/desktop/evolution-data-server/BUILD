(

  if grep -q "This is GTK+ version 2\.24" /usr/share/doc/gtk+-2/README ; then
    # To compile with gtk+-2 24.1
    sedit "s:-DGTK_DISABLE_DEPRECATED::" configure
  fi  &&

  OPTS+=" --without-weather --enable-largefile --enable-ipv6"  &&

  default_build

) > $C_FIFO 2>&1
