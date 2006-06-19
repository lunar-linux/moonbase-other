(
  . /etc/profile.d/x11r7.rc &&

  sedit 's/\/opt\/local/\${X11R7_PREFIX}/g' Makefile
  sedit 's/\/usr\/local/\/usr\/share/g' Makefile

  prepare_install &&
  make install

) > $C_FIFO 2>&1
