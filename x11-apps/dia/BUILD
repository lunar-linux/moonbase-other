(
  export LIBART_CONFIG=/usr/bin/libart2-config

  ./configure  --build=$BUILD                                  \
               --sysconfdir=/etc                               \
               --prefix=/opt/lunar/gnome/2.4                   \
               --localstatedir=/var                            \
               --infodir=/opt/lunar/gnome/2.4/share/info       \
               --mandir=/opt/lunar/gnome/2.4/share/man         \
               --with-html-dir=/usr/share/gtk-doc/html         \
               --enable-python                                 \
               $OPTS                                           &&
 
  default_make

   
) > $C_FIFO 2>&1
