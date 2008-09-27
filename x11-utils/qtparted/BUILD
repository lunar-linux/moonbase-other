(

  . /etc/profile.d/qt3.rc
  . /etc/profile.d/unsermake.rc
  sedit 's@/usr/share/unsermake/@@g' Makefile.in src/Makefile.in &&
  patch_it $SOURCE2 1 &&
  patch_it $SOURCE3 0 &&
  default_build

) > $C_FIFO 2>&1
