(

  ./waf configure --prefix=/usr &&
  ./waf build &&

  prepare_install &&

  ./waf install &&

  # Fix permissions
  chmod +x /usr/lib/thunarx-2/thunar-dropbox.so

) > $C_FIFO 2>&1
