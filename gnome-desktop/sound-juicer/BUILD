(
export PKG_CONFIG_PATH=/opt/lunar/gnome/2/lib/pkgconfig:/usr/lib/pkgconfig &&
./configure     --build=$BUILD                                  \
                --sysconfdir=/etc                               \
                --prefix=/opt/lunar/gnome/2                     \
                --localstatedir=/var                            \
                --infodir=/opt/lunar/gnome/2/share/info         \
                --mandir=/opt/lunar/gnome/2/share/man           \
                $OPTS                                           &&

default_make                                                    &&

if module_installed gnomesu; then
  cp $SOURCE_CACHE/$SOURCE2 /opt/lunar/gnome/2/share/applications
fi

) > $C_FIFO 2>&1

