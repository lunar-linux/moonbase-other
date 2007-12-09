(

  . /etc/profile.d/qt4.rc &&

  default_config &&

  make || exit 1 &&

  prepare_install &&

  cp -r ${SOURCE_DIRECTORY}/bin /opt/lunar/lastfm &&

  echo export PATH=\"'$PATH':/opt/lunar/lastfm\" >> $SOURCE_DIRECTORY/lastfm.rc &&
  install -m644 $SOURCE_DIRECTORY/lastfm.rc /etc/profile.d/ 

) > $C_FIFO 2>&1
