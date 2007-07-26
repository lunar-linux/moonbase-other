(

  . /etc/profile.d/qt3.rc
  . /etc/profile.d/kde3.rc

  # java support ?
  if module_installed %JAVA_SDK; then
    OPTS="$OPTS --with-java=/usr/lib/j2sdk$(installed_version j2sdk)"
  else
    OPTS="$OPTS --with-java=/usr/lib/jdk$(installed_version sun-jdk)"
  fi  &&

  default_build

) > $C_FIFO 2>&1
