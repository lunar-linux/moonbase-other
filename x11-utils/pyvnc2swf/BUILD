(

  prepare_install &&

  mkdir /usr/share/pyvnc2swf/ &&
  install -t /usr/share/pyvnc2swf/ $(ls -1)

  # Install wrapper script
  install -m 755 $SCRIPT_DIRECTORY/pyvnc2swf /usr/bin

) > $C_FIFO 2>&1
