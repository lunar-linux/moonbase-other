(

  # Enable kmail full-text indexing
  if [[ "$KMAIL_IDX" == "y" ]]; then
    OPTS="$OPTS --enable-indexlib"
  fi &&

  . /etc/profile.d/qt3.rc
  . /etc/profile.d/kde3.rc

  default_build

) > $C_FIFO 2>&1
