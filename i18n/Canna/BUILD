(
  
  unset CPP CPPFLAGS

  sedit "s:define DefCannaPrefix .*:define DefCannaPrefix /usr:" Canna.conf &&
  sedit 's;^\(sortcmd=\".* -s\).*$;\1 -k 1,1\";' cmd/mkbindic/mkbindic.cpp &&
  xmkmf &&
  make canna &&
  prepare_install &&
  make install &&
  make install.man

) > $C_FIFO 2>&1
