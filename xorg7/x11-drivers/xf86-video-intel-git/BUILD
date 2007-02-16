(

  git checkout modesetting &&
  touch NEWS AUTHORS INSTALL &&
  echo "SUBDIRS = src" > Makefile.am &&
  . /etc/profile.d/x11r7.rc &&
  default_cvs_build

) > $C_FIFO 2>&1
