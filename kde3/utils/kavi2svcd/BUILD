(

  . /etc/profile.d/qt3.rc
  . /etc/profile.d/kde3.rc

  OPTS="$OPTS --prefix=`kde-config --prefix`"
  default_build

# These need to be in /opt/lunar/kde/3
  mv /usr/bin/kavi2svcd-script $MODULE_PREFIX/bin &&
  mv /usr/local/bin/restlosKillTranscode $MODULE_PREFIX/bin

) > $C_FIFO 2>&1
