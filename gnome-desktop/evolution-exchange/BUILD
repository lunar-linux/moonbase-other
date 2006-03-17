(

  _configure  --prefix=${GNOME210_PREFIX:-/usr}	                \
              --sysconfdir=/etc                                 \
              --localstatedir=/var                              \
              --mandir=${GNOME210_PREFIX:-/usr}/share/man       \
     	      --infodir=${GNOME210_PREFIX:-/usr}/share/info     \
	      $OPTS                                             &&
  default_make

) > $C_FIFO 2>&1
