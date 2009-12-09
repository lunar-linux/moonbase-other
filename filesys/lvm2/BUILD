(

  ./configure  --sbindir=/sbin               \
               --libdir=/lib                 \
               --enable-cmdlib               \
               --enable-pkgconfig            \
               --with-optimisation="$CFLAGS" \
               --enable-fsadm                \
               --enable-dmeventd             \
               --enable-static_link          \
               $OPTS                        &&
  default_make

) > $C_FIFO 2>&1
