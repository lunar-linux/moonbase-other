(

  cd $SOURCE_DIRECTORY/js/src &&

  OPTS+=" --with-system-nspr --enable-threadsafe" &&

  CXXFLAGS+=" -fpermissive" &&

  default_build &&

  #for backwards compatibility
  ln -sf /usr/lib/libmozjs${VERSION%\.*}.a /usr/lib/libjs_static.a &&

  # because spidermonkey 1.8.5 seems to have stopped installing the REPL

  install -m 755 shell/js /usr/bin

) > $C_FIFO 2>&1
