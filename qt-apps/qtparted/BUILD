(

  . /etc/profile.d/qt3.rc
  . /etc/profile.d/kde3.rc
  . /etc/profile.d/unsermake.rc
  sedit 's@/usr/share/unsermake/@@g' Makefile.in src/Makefile.in &&
  sedit 's@$(prefix)/share/applnk/System@$(KDEDIR)/share/applnk/System@g' data/Makefile.am &&
  sedit 's/ped_free/free/' src/qp_libparted.cpp &&
  patch_it $SOURCE2 1 &&
  patch_it $SOURCE3 0 &&
  default_build &&

  # Remove redundand, empty dir
  rm -rf /usr/share/man/man1/man1

) > $C_FIFO 2>&1
