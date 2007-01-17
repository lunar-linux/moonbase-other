(

  sedit "s:automake\*1.9\*:automake\*1.9\*\ | automake\*1.10\*:" admin/cvs.sh

  . /etc/profile.d/qt3.rc
  . /etc/profile.d/kde3.rc

  make -f Makefile.dist  &&

  default_build

) > $C_FIFO 2>&1
