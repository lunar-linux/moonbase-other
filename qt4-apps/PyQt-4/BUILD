(

  . /etc/profile.d/qt4.rc

  python ./configure.py $OPTS       &&
  default_make                      &&
  mkdir -p /usr/share/$MODULE       &&
  cp -Rf examples /usr/share/$MODULE

) > $C_FIFO 2>&1
