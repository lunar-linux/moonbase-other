(
./configure     --build=$BUILD                                  \
                --sysconfdir=/etc                               \
                --prefix=/opt/lunar/gnome/2.4                     \
                --localstatedir=/var                            \
                --infodir=/opt/lunar/gnome/2.4/share/info         \
                --mandir=/opt/lunar/gnome/2.4/share/man           \
                $OPTS                                           &&

default_make                                                    &&

if module_installed gnomesu; then
  cp $SOURCE_CACHE/$SOURCE2 /opt/lunar/gnome/2.4/share/applications
fi

) > $C_FIFO 2>&1

