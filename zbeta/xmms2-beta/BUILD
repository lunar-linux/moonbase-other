(
  scons EXCLUDE="gnomevfs et samba" \
        PREFIX=/usr \
        MANDIR=/usr/share/man &&
  prepare_install &&
  scons EXLCUDE="gnomevfs et samba" \
        PREFIX=/usr \
        MANDIR=/usr/share/man install
  
 ) > $C_FIFO 2>&1
