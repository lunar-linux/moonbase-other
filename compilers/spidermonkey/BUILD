  cd $SOURCE_DIRECTORY/js/src &&

  OPTS+=" --with-system-nspr --enable-threadsafe" &&

  CXXFLAGS+=" -fpermissive -std=gnu++03" &&

  # awful hack until Mozilla gets around to fixing this
  sedit '1,$s/defined(@TEMPLATE_FILE)/@TEMPLATE_FILE/' \
            config/milestone.pl &&

  default_build &&

  #for backwards compatibility
  ln -sf /usr/lib/libmozjs${VERSION%\.*}.a /usr/lib/libjs_static.a &&

  # because spidermonkey 1.8.5 seems to have stopped installing the REPL
  install -m 755 shell/js${MAJOR_VERSION} /usr/bin
