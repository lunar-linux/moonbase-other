(

  bad_flags -Werror &&

  OPTS="$OPTS --enable-conduits --with-libpng=/usr --enable-threads" &&

  if module_installed sun-jdk; then
    JAVA_VERSION=`installed_version sun-jdk`;
    export JAVA_HOME="/usr/lib/jdk${JAVA_VERSION}";
    OPTS="$OPTS --with-java=$JAVA_HOME"
  else
    JAVA_VERSION=`installed_version j2sdk`;
    export JAVA_HOME="/usr/lib/j2sdk${JAVA_VERSION}";
    OPTS="$OPTS --with-java=$JAVA_HOME"
  fi &&

  default_build &&

  gather_docs doc/*

) > $C_FIFO 2>&1
