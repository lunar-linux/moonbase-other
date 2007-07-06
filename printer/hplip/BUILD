(

    patch_it $SOURCE2 1 &&
  if module_installed qt3; then
    . /etc/profile.d/qt3.rc;
  fi
  if [[ "$PP" == "y" ]] ; then
    OPTS="$OPTS --disable-pp-build"
  fi
  if [[ "$SCAN" == "n" ]] ; then
    OPTS="$OPTS --disable-scan-build"
  fi
  if [[ "$FAX" == "n" ]] ; then
    OPTS="$OPTS --disable-fax-build"
  fi &&

  default_build

) > $C_FIFO 2>&1
