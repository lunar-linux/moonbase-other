(
  # This is a fugly work around for now
  cp -f /usr/include/libdevmapper.h $SOURCE_DIRECTORY/include/ &&
  ./configure  --build=$BUILD            \
               --prefix=/usr             \
               --sbindir=/sbin           \
               --with-staticdir=/sbin    \
               --libdir=/lib             \
               --mandir=/usr/share/man   \
               --sysconfdir=/etc         \
               --enable-readline         \
               --enable-cmdlib           \
               --with-mirrors=internal   \
               --with-snapshots=internal \
               $OPTS                    &&
  default_make

) > $C_FIFO 2>&1
