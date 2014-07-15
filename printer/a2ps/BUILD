(

  patch_it $SOURCE2 1 &&
  patch_it $SOURCE3 1 &&
  patch_it $SOURCE4 1 &&
  patch_it $SOURCE5 1 &&
# In lieu of a one line patch
  sedit 's:extern char \* stpcpy();::' lib/xstrrpl.c &&
# This was the only thing needed from the 4.13 security patch, all others from that were 
# applied in thie version.
  sedit 's:res->flag_output_is_printer = false;:res->flag_output_is_printer = true;:' lib/printers.c &&

# Could not find our rm
  sedit "s:/bin/rm:/usr/bin/rm:" afm/make_fonts_map.sh &&
  for file in $(find . -name '*'.in |cut -c 3-50) ; do
   sedit "s:/bin/rm:/usr/bin/rm:g" $file
  done &&
  for file in $(find . -name '*'.in |cut -c 3-50) ; do
   sedit "s:-rm:/usr/bin/rm:g" $file
  done &&

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
