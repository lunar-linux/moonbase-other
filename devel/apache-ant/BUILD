(
  if module_installed sun-jdk; then
    JAVA_VERSION=`installed_version sun-jdk`;
    export JAVA_HOME="/usr/lib/jdk${JAVA_VERSION}";
  else
    JAVA_VERSION=`installed_version j2sdk`;
    export JAVA_HOME="/usr/lib/j2sdk${JAVA_VERSION}";
  fi

  # apache-ant build will fail without junit since 1.7.0
  sedit 's:depends="jars,test-jar":depends="jars":g' build.xml &&

  prepare_install &&

  ./build.sh -Ddist.dir=/usr/share/ant &&
  gather_docs TODO WHATSNEW welcome.html &&
  for each in ant antRun runant.pl runant.py complete-ant-cmd.pl ; do
    ln -sf /usr/share/ant/bin/${each} /usr/bin/${each}
  done

) > $C_FIFO 2>&1
