(

   [ -f /etc/profile.d/xfce4.rc ] && . /etc/profile.d/xfce4.rc

   # tchan added this patch to fix the incorrect pkg-config check for libXi.
   # This should be removed when the xfce4 devs get around to fixing this correctly
  patch_it $SOURCE_CACHE/$SOURCE2 1  &&

  patch_it $SOURCE_CACHE/$SOURCE3 1  &&

  autoheader  &&
  autoconf    &&

  ./configure  --build=$BUILD              \
                --prefix=${MODULE_PREFIX}  \
                $OPTS                     &&

  default_make

) > $C_FIFO 2>&1
