(
export PKG_CONFIG_PATH=/opt/lunar/gnome/2/lib/pkgconfig:/usr/lib/pkgconfig &&

./configure --prefix=/opt/lunar/gnome/2 \
            --with-mozilla-snapshot=1.3 \
            $OPTS                       &&

default_make  &&

#This will make epiphany use all mozilla plugins
cp $SCRIPT_DIRECTORY/epiphany /opt/lunar/gnome/2/bin
  
) > $C_FIFO 2>&1
