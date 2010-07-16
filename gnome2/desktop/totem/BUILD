(

  sedit 's:xsltproc:xsltproc --novalid:g' help/Makefile.in
  export BROWSER_PLUGIN_DIR="/opt/lunar/plugins"
  ./configure  --prefix=${GNOME210_PREFIX:-/usr}  \
               --prefix=${GNOME210_PREFIX:-/usr}  \
               --build=$BUILD        \
               --sysconfdir=/etc     \
               --localstatedir=/var  \
               --infodir=${GNOME210_PREFIX:-/usr}/share/info  \
               --mandir=${GNOME210_PREFIX:-/usr}/share/man    \
               $OPTS                                         &&
   default_make

) > $C_FIFO 2>&1
