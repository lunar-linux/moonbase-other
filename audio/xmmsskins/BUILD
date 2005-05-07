(

  prepare_install                       &&

  SKINS=/usr/share/xmms/Skins           &&

  if ! [ -e "$SKINS" ]; then
     mkdir -p $SKINS
  fi                                    &&

  cd $SOURCE_DIRECTORY                  &&
  mv -u $SOURCE_DIRECTORY/* $SKINS      &&
  chown -R root.root $SKINS

) > $C_FIFO 2>&1
