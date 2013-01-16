(

  CFLAGS+=" -fPIC" &&

  echo -e "#ifndef VSF_BUILDDEFS_H\n#define VSF_BUILDDEFS_H" > builddefs.h &&

  if [ $(get_module_config USE_TCP_WRAPPERS) == "n" ] ; then
    echo "#undef VSF_BUILD_TCPWRAPPERS" >> builddefs.h
  else
    echo "#define VSF_BUILD_TCPWRAPPERS" >> builddefs.h
  fi &&

  if [ $(get_module_config USE_PAM) == "n" ] ; then
    echo "#undef VSF_BUILD_PAM" >> builddefs.h
  else
    echo "#define VSF_BUILD_PAM" >> builddefs.h
  fi &&

  if [ $(get_module_config USE_SSL) == "n" ] ; then
    echo "#undef VSF_BUILD_SSL" >> builddefs.h
  else
    echo "#define VSF_BUILD_SSL" >> builddefs.h
  fi &&

  echo "#endif /* VSF_BUILDDEFS_H */" >> builddefs.h &&
  cat builddefs.h       &&

  make CFLAGS="$CFLAGS" &&
  prepare_install       &&

  cp vsftpd /usr/sbin/vsftpd           &&
  cp vsftpd.conf.5 /usr/share/man/man5 &&
  cp vsftpd.8 /usr/share/man/man8      &&

  if [ ! -f /etc/vsftpd.conf ] ; then
    sedit "s:anonymous_enable=YES:anonymous_enable=NO:" vsftpd.conf
    sedit "s:#local_enable=YES:local_enable=YES:" vsftpd.conf
    sedit "s:#write_enable=YES:write_enable=YES:" vsftpd.conf
    cp vsftpd.conf /etc
    if get_module_config INITDSCRIPTS | grep -qw vsftpd ; then
      echo -e "\n\n# standalone mode requires these settings:\nlisten=YES\nbackground=YES\n\n" >> /etc/vsftpd.conf
                else
                  echo -e "\n\n# standalone mode requires these settings:\n# listen=YES\n# background=YES\n\n" >> /etc/vsftpd.conf
    fi
  fi

) > $C_FIFO 2>&1
