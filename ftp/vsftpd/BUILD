(

  if module_installed tcp_wrappers; then
    sedit "s/undef/define/" builddefs.h
  fi

  make CFLAGS="$CFLAGS" &&
  prepare_install

  cp vsftpd /usr/sbin/vsftpd
  cp vsftpd.conf.5 /usr/share/man/man5
  cp vsftpd.8 /usr/share/man/man8
  
  if [ ! -f /etc/vsftpd.conf ] ; then
    sedit "s:anonymous_enable=YES:anonymous_enable=NO:" vsftpd.conf
    sedit "s:#local_enable=YES:local_enable=YES:" vsftpd.conf
    sedit "s:#write_enable=YES:write_enable=YES:" vsftpd.conf
    cp vsftpd.conf /etc
  fi

) > $C_FIFO 2>&1

