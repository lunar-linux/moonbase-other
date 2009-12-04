(
   [ -f /etc/profile.d/xfce4.rc ] && . /etc/profile.d/xfce4.rc

   ./configure  --build=$BUILD             \
                --prefix=${MODULE_PREFIX}  \
                $OPTS                     &&

   default_make

) > $C_FIFO 2>&1
