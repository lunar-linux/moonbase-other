(
    ./configure --build=$BUILD                                  \
                --sysconfdir=/etc                               \
                --prefix=/opt/lunar/gnome/2                     \
                --localstatedir=/var                            \
                --infodir=/opt/lunar/gnome/2/share/info         \
                --mandir=/opt/lunar/gnome/2/share/man           \
                $OPTS                                           &&

default_make  &&

#This will make epiphany use all mozilla plugins
cp $SCRIPT_DIRECTORY/epiphany /opt/lunar/gnome/2/bin
  
) > $C_FIFO 2>&1
