(

  SYMLINK=$(basename `ldd libflashplayer.so | grep libstdc++ | cut -d= -f1`)

  cd $SOURCE_DIRECTORY                         &&
  prepare_install                              &&
  mkdir -p /opt/lunar/plugins                  &&
  cp *.xpt *.so /opt/lunar/plugins             &&
  if [ ! -e "/usr/lib/$SYMLINK" ] ; then
    verbose_msg "ln -s libstdc++.so /usr/lib/$SYMLINK"
    ln -s libstdc++.so /usr/lib/$SYMLINK
  fi

) > $C_FIFO 2>&1
