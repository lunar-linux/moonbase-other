(

  # build commons-daemon.jar
  ant

  # build jsvc
  cd src/native/unix
  default_config
  make

  cd $SOURCE_DIRECTORY

  prepare_install

  # install commons-daemon.jar
  install -Dm755 dist/$MODULE-$VERSION.jar /usr/share/java/$MODULE-$VERSION.jar
  ln -sf /usr/share/java/$MODULE-$VERSION.jar /usr/share/java/$MODULE.jar

  # optional install API docs
  if [ "`get_module_config DOCS`" = "y" ] ; then
    install -d /usr/share/doc/$MODULE
    cp -r dist/docs/api/* /usr/share/doc/$MODULE
  fi

  # install jsvc
  install -Dm755 src/native/unix/jsvc /usr/bin/jsvc

) > $C_FIFO 2>&1
