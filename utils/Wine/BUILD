(

  bad_flags "-z combreloc"
  CF=$CFLAGS  &&
  unset CFLAGS CXXFLAGS  &&

  ./configure --build=i686-pc-linux-gnu  \
              --prefix=/usr              \
	      --sysconfdir=/etc          \
	      --localstatedir=/var       \
	      --infodir=/usr/share/info  \
	      --mandir=/usr/share/man   &&

  find . -type f -name 'Makefile' -print | while read i ; do
    sedit "s:^CFLAGS    = -g -O2 -Wall -mpreferred-stack-boundary=2 \$(EXTRACFLAGS):CFLAGS    = -g -Wall $CF \$(EXTRACFLAGS):" $i
  done  &&

  sedit "s:-pthread: :" dlls/winmm/winearts/Makefile  && 

  make depend  &&
  default_make

) > $C_FIFO 2>&1
