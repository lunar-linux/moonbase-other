(

   ./configure  --prefix=/usr             \
                --build=$BUILD            \
                --sysconfdir=/etc         \
                --localstatedir=/var      \
                --with-distro=none        \
                --disable-qt4             \
                --disable-qt3             \
                --disable-gdbm            \
                --disable-lynx            \
                --disable-python-dbus     \
                --disable-mono            \
                $OPTS                    &&

    default_make

) > $C_FIFO 2>&1
