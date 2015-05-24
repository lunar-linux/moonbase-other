
  OPTS+=" --enable-fallback-curses --enable-pinentry-curses" &&

  if in_depends $MODULE qt4 ; then
    . /etc/profile.d/qt4.rc &&

    local f &&
     for f in qt4/*.moc; do
       /usr/bin/moc ${f/.moc/.h}
     done &&

    for file in qt4/*.moc; do
      moc ${file/.moc/.h} > ${file}
    done
  fi &&

  sedit 's/gulong/gsize/g' gtk+-2/gtksecentry.c  &&

  default_build
