(

  # Using a borrowed patch from gentoo to fix the flac (>=1.1.3) compile problem in libsndfile
  # Remember to remove this patch and the autoreconf line at some point in the future!
  patch_it $SOURCE_CACHE/$SOURCE2 1 &&

  autoreconf &&

  ./configure  --prefix=/usr         \
               --sysconfdir=/etc     \
               --localstatedir=/var  \
               --enable-libmpeg2     \
               --disable-smb         \
               --disable-gtk         \
               --disable-qt          \
               --disable-kde         \
               --enable-x11          \
               --enable-skins        \
               $OPTS                &&

  default_make

) > $C_FIFO 2>&1

