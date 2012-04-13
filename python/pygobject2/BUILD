(

  patch_it $SOURCE_CACHE/$SOURCE2 1  &&

  if [ "`get_module_config DOCS`" = "n" ] ; then
    sedit "s/SUBDIRS = docs codegen/SUBDIRS = codegen/g" Makefile.in
  fi  &&

   ./configure  --prefix=${GNOME210_PREFIX:-/usr}  \
                --build=$BUILD        \
                --sysconfdir=/etc     \
                --localstatedir=/var  \
                --infodir=${GNOME210_PREFIX:-/usr}/share/info  \
                --mandir=${GNOME210_PREFIX:-/usr}/share/man    \
                $OPTS                                         &&
    default_make

) > $C_FIFO 2>&1
