(

  # remove *.bat files
  rm $SOURCE_DIRECTORY/bin/*.bat &&

  prepare_install &&

  # copy extracted files
  mkdir -p /usr/scala                &&
  cp -r $SOURCE_DIRECTORY /usr/scala &&

  # symlink default and latest (like java)
  ln -sf /usr/scala/$MOD-${VERSION}.final /usr/scala/latest &&
  if [ ! -h /usr/scala/default ]; then
    ln -sf /usr/scala/latest /usr/scala/default
  fi &&

  # symlink bin folder
  for file in /usr/scala/latest/bin/*; do
    ln -sf $file /usr/bin/ || exit 1
  done &&

  # symlink man folder
  for file in /usr/scala/latest/man/man1/*; do
    ln -sf $file /usr/man/man1/ || exit 1
  done

) > $C_FIFO 2>&1
