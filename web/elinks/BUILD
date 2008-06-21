(

# NOTE guile support is incomplete in elinks.  Enable it at your own risk!
  mkdir -p elinks-build  &&
  cd elinks-build        &&
  ../configure --prefix=/usr             \
              --infodir=/usr/share/info  \
              --mandir=/usr/share/man    \
              --sysconfdir=/etc          \
              --without-guile            \
              --enable-256-colors        \
              $OPTS                     &&

  default_make  &&
  if [ ! -e "/etc/elinks.conf" ] ; then
    cp $SCRIPT_DIRECTORY/elinks.conf /etc/elinks.conf
  fi  

) > $C_FIFO 2>&1
