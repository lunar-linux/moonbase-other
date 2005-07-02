(

  ./configure  --build=$BUILD             \
               --prefix=/usr              \
               --with-root-prefix=        \
               --infodir=/usr/share/info  \
               --mandir=/usr/share/man    \
               --enable-elf-shlibs        \
               $OPTS                     &&
  default_make                           &&
  make install-libs                      ||
  exit 1

  if [ ! -x /etc/init.d/mount ] ; then
    cp $SCRIPT_DIRECTORY/init.d/mount /etc/init.d
  fi  &&

  ln -sf /etc/init.d/mount /etc/rcS.d/S10mount  &&
  ln -sf /etc/init.d/mount /etc/rc6.d/K99mount  &&
  ln -sf /etc/init.d/mount /etc/rc0.d/K99mount

) > $C_FIFO 2>&1
