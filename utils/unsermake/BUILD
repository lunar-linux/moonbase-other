(

  prepare_install &&

  echo export PATH='$PATH':/usr/lib/${MODULE}_${VERSION} >> $SOURCE_DIRECTORY/unsermake.rc &&
  install -m0644 $SOURCE_DIRECTORY/unsermake.rc /etc/profile.d/ &&

  cp -r $SOURCE_DIRECTORY /usr/lib/${MODULE}_${VERSION}

) > $C_FIFO 2>&1
