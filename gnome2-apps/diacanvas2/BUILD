(
 

./configure --prefix=/opt/lunar/gnome/2.4  \
            --disable-python               \
            --disable-gtk-doc              \
            $OPTS                          &&
make                                    &&
prepare_install                         &&
touch doc/ref/html/index.sgml           &&
make install     
 

) > $C_FIFO 2>&1
