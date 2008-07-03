(

    ./configure --sysconfdir=/etc                               \
                --prefix=/opt/lunar/$MOD                        \
                --localstatedir=/var                            \
                --infodir=/opt/lunar/$MOD/share/info            \
                --mandir=/opt/lunar/$MOD/share/man              \
                --with-graphs                                   \
                $OPTS                                           &&

   default_make                                                 &&
   install -m 755 -d /usr/share/pixmaps/                        &&
   cp /opt/lunar/$MOD/share/pixmaps/gnome-gnumeric.png /usr/share/pixmaps/

) > $C_FIFO 2>&1
