(
  export PKG_CONFIG_PATH=/opt/lunar/gnome/2/lib/pkgconfig:$PKG_CONFIG_PATH &&

  ./configure --prefix=/opt/lunar/gnome/2		\
              --bindir=/opt/lunar/gnome/2/bin		\
              --sbindir=/opt/lunar/gnome/2/sbin		\
              --datadir=/opt/lunar/gnome/2/share	\
              --sysconfdir=/etc				\
              --infodir=/opt/lunar/gnome/2/share/info	\
              --mandir=/opt/lunar/gnome/2/share/man	&&
  default_make

) > $C_FIFO 2>&1
