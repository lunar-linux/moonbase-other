(
  export PKG_CONFIG_PATH=/opt/lunar/gnome/2/lib/pkgconfig:$PKG_CONFIG_PATH &&
  export LD_LIBRARY_PATH &&
  ./configure   --build=$BUILD                                   \
                --sysconfdir=/etc                                \
                --prefix=/usr                                    \
                --localstatedir=/var                             \
                --infodir=/usr/share/info                        \
                --mandir=/usr/man                                \
                --enable-gconftool                               \
                --enable-gconf                                   \
                --enable-gnome_vfs                               \
                --enable-oss                                     \
                --enable-vcd                                     \
                --enable-libmmx                                  \
                --enable-jpeg                                    \
                --enable-png                                     \
                --with-x                                         \
                $OPTS                                           &&
 
 default_make 

) > $C_FIFO 2>&1 
