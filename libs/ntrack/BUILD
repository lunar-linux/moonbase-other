(

  sedit "s:-Werror::" modules/Makefile.am modules/Makefile.in &&

  if in_depends $MODULE qt4 ; then
    . /etc/profile.d/qt4.rc
  fi &&

  OPTS+=" --disable-static" &&

  default_build

) > $C_FIFO 2>&1
