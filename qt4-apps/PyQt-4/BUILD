(

  . /etc/profile.d/qt4.rc

  echo "yes" | MORE="20000000" python ./configure.py $OPTS &&
  default_make                      &&
  mkdir -p /usr/share/$MODULE       &&
  cp -Rf examples /usr/share/$MODULE

) > $C_FIFO 2>&1
