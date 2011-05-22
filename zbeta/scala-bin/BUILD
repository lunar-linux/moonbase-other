(

  # remove *.bat files
  rm -rf $SOURCE_DIRECTORY/bin/*.bat $SOURCE_DIRECTORY/src/ &&

  prepare_install &&

  # copy extracted files
  install -d /usr/scala              &&
  cp -r $SOURCE_DIRECTORY /usr/scala &&

  # symlink default and latest (like java)
  ln -s /usr/scala/$MOD-$VER /usr/scala/latest  &&
  ln -s /usr/scala/latest    /usr/scala/default &&

  # bash completion
  install -d /etc/bash_completion.d &&
  install -m755 $SOURCE_DIRECTORY/misc/scala-tool-support/bash-completion/scala_completion.sh \
                /etc/bash_completion.d/scala-bash-completion.sh

) > $C_FIFO 2>&1
