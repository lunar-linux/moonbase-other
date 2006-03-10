(   

  sedit 's/usr\/local/usr/' Makefile                           &&
  sedit 's/\$(DESTDIR)\/man/\$(DESTDIR)\/share\/man/' Makefile &&
  make logos-all                      &&
  prepare_install                     &&
  make install || exit 1

  if [ ! -e /etc/linux_logo.conf ];  then
     echo "-t \"Lunar-Linux\" -f -u -y -L 14" > linux_logo.conf
     install -m644 linux_logo.conf /etc/
  fi

) > $C_FIFO 2>&1
