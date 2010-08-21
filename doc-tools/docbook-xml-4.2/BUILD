(

  TARGET=/usr/share/sgml/docbook/$MODULE &&

  # We need to remove the old catalog entries upon an update
  if module_is_expired $MODULE ; then
        set_module_config OLD_VER "`installed_version $MODULE`"
  fi &&

  prepare_install &&
  if ! [ -d "$TARGET" ]; then
       mkdir -p $TARGET
  fi &&

  rm -rf $SOURCE_DIRECTORY/old.libraries &&

  cp -a $SOURCE_DIRECTORY/* $TARGET/ &&
  install -m755 $SOURCE_CACHE/$SOURCE2 /usr/bin/ &&

  ln -sf $TARGET/docbook.cat $TARGET/catalog

) > $C_FIFO 2>&1
