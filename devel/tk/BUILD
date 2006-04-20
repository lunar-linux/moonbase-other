(

 (
  cd tcl$VERSION/unix  &&

  # This sedit line is only a temporary fix. When the next version of tcl and tk is available
  # this line should be deleted.

  sedit "s:system=MP-RAS-\`awk '{print }' /etc/.relid'\`:system=MP-RAS-\`awk '{print }' /etc/.relid\`:g" configure   &&

  ./configure --prefix=/usr  \
              --mandir=/usr/share/man
 ) &&

  cd unix  &&

  # This sedit line is only a temporary fix. When the next version of tcl and tk is available
  # this line should be deleted.

  sedit "s:system=MP-RAS-\`awk '{print }' /etc/.relid'\`:system=MP-RAS-\`awk '{print }' /etc/.relid\`:g" configure   &&
  ./configure --prefix=/usr              \
              --mandir=/usr/share/man    \
        --with-tcl=../tcl$VERSION/unix  &&
  default_make                          &&
  ln -sf wish8.4 /usr/bin/wish

) > $C_FIFO 2>&1
