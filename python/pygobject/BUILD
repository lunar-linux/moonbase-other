(

  if [ "`get_module_config DOCS`" = "n" ] ; then
    sedit "s/SUBDIRS = docs codegen/SUBDIRS = codegen/g" Makefile.in
  fi  &&

   ./configure  --prefix=/usr              \
                --build=$BUILD             \
                --sysconfdir=/etc          \
                --localstatedir=/var       \
                --infodir=/usr/share/info  \
                --mandir=/usr/share/man    \
                $OPTS                     &&
    default_make

) > $C_FIFO 2>&1
