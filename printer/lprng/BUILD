(

  ./configure --prefix=/usr \
              --sysconfdir=/etc \
	      --localstatedir=/var \
              --mandir=/usr/share/man \
	      --with-userid=lp \
	      --with-groupid=lp &&
  default_make  &&

  mkdir -p /usr/share/doc/lprng &&
  cp $SOURCE_DIRECTORY/printcap /usr/share/doc/lprng/ &&
  cp $SOURCE_DIRECTORY/lpd.conf /usr/share/doc/lprng/ &&
  cp $SOURCE_DIRECTORY/lpd.perms /usr/share/doc/lprng/ &&
  if [ -f /etc/rc.d/init.d/lpd ] ; then
    rm -f /etc/rc.d/init.d/lpd
  fi

) > $C_FIFO 2>&1
