(

  prepare_install &&
  mkdir -p /usr/share/fonts &&
  for fonts in $SOURCE_DIRECTORY/*; do
    cp -rf $fonts /usr/share/fonts;
  done;
 
  # Rerun fc-cache so the new fonts are recognized
  message "Running fc-cache ..."
  /usr/bin/fc-cache -f

) > $C_FIFO 2>&1
