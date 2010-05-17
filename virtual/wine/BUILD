(

  bad_flags "-z combreloc"
  ./configure --build=i686-pc-linux-gnu  \
              --prefix=/usr              \
              --sysconfdir=/etc          \
              --localstatedir=/var       \
              --infodir=/usr/share/info  \
              --mandir=/usr/share/man    \
              --datarootdir=/usr/share  &&

  make depend  &&
  default_make

) > $C_FIFO 2>&1
