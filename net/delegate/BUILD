(

  sedit	"s/ADMIN = undef/ADMIN = $DELEGATE_ADMIN/"	src/Makefile	&&
  optimize_make								&&
  make									&&
  prepare_install							&&
  install -m 0755 src/delegated /usr/bin				&&
  mkdir   -p /usr/share/doc/delegate					&&
  install -m0644 doc/Manual.htm		/usr/share/doc/delegate		&&
  install -m0644 doc/tutor-en.htm	/usr/share/doc/delegate		&&
  install -m0644 doc/tutor-jp.htm 	/usr/share/doc/delegate

) > $C_FIFO 2>&1
