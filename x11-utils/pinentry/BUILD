(

  OPTS+=" --enable-fallback-curses --enable-pinentry-curses" &&

  if in_depends $MODULE qt4 ; then
    . /etc/profile.d/qt4.rc 
  fi &&

  sedit 's/gulong/gsize/g' gtk+-2/gtksecentry.c  &&

  default_build

) > $C_FIFO 2>&1
