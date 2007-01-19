(

  sedit "s:autoconf\*2.5\*:autoconf\*2.5\* | autoconf\*2.61\*:" admin/cvs.sh
  sedit "s:autoheader\*2.5\*:autoheader\*2.5\* | autoheader\*2.61\*:" admin/cvs.sh
  sedit "s:automake\*1.8.\*:automake\*1.8.\*\ | automake\*1.10\*:" admin/cvs.sh

  . /etc/profile.d/qt3.rc
  . /etc/profile.d/kde3.rc

  make -f Makefile.cvs  &&

  default_build

) > $C_FIFO 2>&1
