(

  . /etc/profile.d/qt3.rc
  . /etc/profile.d/kde3.rc


  default_config &&

  if [[ "$APIDOX" == "y" ]]; then
    make apidox &&
  fi

  default_make

) > $C_FIFO 2>&1
