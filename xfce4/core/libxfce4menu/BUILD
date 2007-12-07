(
   [ -f /etc/profile.d/xfce4.rc ] && . /etc/profile.d/xfce4.rc

   ./autogen.sh --build=$BUILD                              \
                --prefix=${MODULE_PREFIX}  \
                $OPTS                                       &&

   default_make

) > $C_FIFO 2>&1
