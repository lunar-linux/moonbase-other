(

  if in_depends $MODULE PyQt4; then
     . /etc/profile.d/qt4.rc
  fi &&

  if [[ "$PP" == "y" ]] ; then
    OPTS="$OPTS --disable-pp-build"
  fi &&

  if [[ "$FAX" == "n" ]] ; then
    OPTS="$OPTS --disable-fax-build"
  fi &&

  default_build

) > $C_FIFO 2>&1
