(
 

./configure --prefix=/usr                  \
            --disable-python               \
            --disable-gtk-doc              \
            $OPTS                          &&
make                                    &&
prepare_install                         &&
touch doc/ref/html/index.sgml           &&
make install     
 

) > $C_FIFO 2>&1
