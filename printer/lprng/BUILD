(

  devoke_installwatch &&
  export CFLAGS= &&
  export POSTINSTALL=NO &&

  ./configure --prefix=/usr \
              --sysconfdir=/etc \
	      --localstatedir=/var \
              --mandir=/usr/share/man \
	      --with-userid=lp \
	      --with-groupid=lp &&
  make &&
  prepare_install     &&
  invoke_installwatch &&
  make install &&
  
  mkdir -p /usr/share/doc/lprng &&
  cp $SOURCE_DIRECTORY/printcap /usr/share/doc/lprng/ &&
  cp $SOURCE_DIRECTORY/lpd.conf /usr/share/doc/lprng/ &&
  cp $SOURCE_DIRECTORY/lpd.perms /usr/share/doc/lprng/

) > $C_FIFO 2>&1
