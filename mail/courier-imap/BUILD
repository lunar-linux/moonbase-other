(

  ./configure  --prefix=/usr             \
               --sysconfdir=/etc/courier \
               --localstatedir=/var      \
               --disable-root-check      \
               --mandir=/usr/share/man   \
               $OPTS                    &&
  make                                  &&
  prepare_install                       &&
  make  install-strip                   &&
  make  install-configure               &&
  mkdir -p /var/lock/subsys             &&

  sedit  "s:2345:345:"  courier-imap.sysvinit  &&

  if  ! [ -e /etc/init.d/imapd ]; then
    cp  courier-imap.sysvinit /etc/init.d/imapd
  fi

  chmod +x /etc/init.d/imapd                   &&

  case  $IMAP_BOOT  in
    y|Y|j|J)  chkconfig --add imapd 
              ;;
          *)  true
              ;;
  esac

) > $C_FIFO 2>&1
