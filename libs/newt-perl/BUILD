(
  patch_it /var/spool/lunar/$SOURCE2 1               &&
  patch_it /var/spool/lunar/$SOURCE3 1               &&
  patch_it /var/spool/lunar/$SOURCE4 1               &&
  patch_it /var/spool/lunar/$SOURCE5 1               &&
  rm -rf newtlib                                     &&

  perl Makefile.PL PREFIX=/usr                       &&
  make                                               &&
  prepare_install                                    &&
  make    install                                    &&
  find /usr -name Newt.so | xargs chmod 755
  
) > $C_FIFO 2>&1
