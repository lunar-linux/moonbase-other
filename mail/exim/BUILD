(

  add_priv_user mail:mail

  mkdir -p        /var/spool/mail
  chmod 1777      /var/spool/mail
  chown mail:mail /var/spool/mail

  mkdir Local
 
  if [ "$USE_X11" == "y" ]; then
    cp src/EDITME           Local/Makefile
    cp exim_monitor/EDITME  Local/eximon.conf
  else
    grep -v "EXIM_MONITOR=" src/EDITME > Local/Makefile
  fi

  if [ "$USE_SCANNING" == "y" ]; then
     echo "WITH_CONTENT_SCAN=yes" >> Local/Makefile
  fi

if module_installed tcp_wrappers ; then
    echo "USE_TCP_WRAPPERS=yes" >> Local/Makefile
    echo "EXTRALIBS=-lwrap"     >> Local/Makefile
  fi

  if module_installed Linux-PAM ; then
    echo "SUPPORT_PAM=yes" >> Local/Makefile
    if module_installed tcp_wrappers ; then
      echo "EXTRALIBS=-lpam -ldl -lwrap" >> Local/Makefile  
    else
      echo "EXTRALIBS=-lpam -ldl" >> Local/Makefile  
    fi
  fi

  if  module_installed  mysql;  then
    echo  "LOOKUP_MYSQL=yes"                     >>  Local/Makefile
    echo  "LOOKUP_INCLUDE=-I /usr/include/mysql" >>  Local/Makefile
    echo  "LOOKUP_LIBS=-lmysqlclient"            >>  Local/Makefile
  fi

  echo  "EXIM_USER=mail"                   >>  Local/Makefile
  echo  "BIN_DIRECTORY=/usr/sbin"          >>  Local/Makefile
  echo  "CONFIGURE_FILE=/etc/exim.conf"    >>  Local/Makefile
  echo  "SPOOL_DIRECTORY=/var/spool/mail"  >>  Local/Makefile
  echo  "CFLAGS=$CFLAGS"                   >>  Local/Makefile
  echo  "AUTH_CRAM_MD5=yes"                >>  Local/Makefile
  echo  "AUTH_PLAINTEXT=yes"               >>  Local/Makefile
  echo  "LOOKUP_NIS=yes"                   >>  Local/Makefile
  echo  "SUPPORT_MAILDIR=yes"              >>  Local/Makefile

  default_make

) > $C_FIFO 2>&1  &&  (

  ln     -sf  ../sbin/exim  /usr/lib/sendmail
  ln     -sf  exim         /usr/sbin/sendmail

  sedit  "s:var/mail:var/spool/mail:"         /etc/exim.conf
  sedit  "s/\# group = mail/  group = mail/"  /etc/exim.conf
  sedit  "s/\# mode = 0660/  mode = 0660/"    /etc/exim.conf

  if  [  "$IDENT_QUERIES"  == "n"  ]  &&
      !  grep  -q  "rfc1413_query_timeout"  /etc/exim.conf
  then
    cp  /etc/exim.conf  /tmp/exim.conf
    awk  '{
             sub(/host_lookup = \*/,
                 "&\nrfc1413_query_timeout = 0s");
             print
          }'  /tmp/exim.conf  >  /etc/exim.conf
    rm  /tmp/exim.conf
  fi

  touch  /etc/aliases

)
