(

# This was the only thing needed from the 4.13 security patch, all others from that were 
# applied in thie version.
  sedit 's:res->flag_output_is_printer = false;:res->flag_output_is_printer = true;:' lib/printers.c &&

  if [ `arch` == x86_64 ] ; then
      cp /usr/share/automake/config.guess auxdir/  &&
      cp /usr/share/automake/config.sub auxdir/   
  fi &&

  ./configure  --build=$BUILD             \
               --prefix=/usr              \
               --sysconfdir=/etc/a2ps     \
               --localstatedir=/var       \
               --infodir=/usr/share/info  \
               --mandir=/usr/share/man    \
               $OPTS                     &&

  default_make  &&
  rm -f /a2ps*.el

) > $C_FIFO 2>&1
