(

  . /etc/profile.d/qt3.rc
  . /etc/profile.d/kde3.rc

  patch_it $SOURCE_CACHE/$SOURCE1 0 &&

  # java support ?
  if module_installed j2sdk; then
    OPTS="$OPTS --with-java=/usr/lib/j2sdk$(installed_version j2sdk)"
   if module_installed sun-jdk; then
    OPTS="$OPTS --with-java=/usr/lib/jdk$(installed_version sun-jdk)"
   fi
  else
    OPTS="$OPTS --without-java"
  fi  &&

  default_build

) > $C_FIFO 2>&1
