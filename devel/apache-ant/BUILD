(

  if module_installed sun-jdk; then
     . /etc/profile.d/sun-jdk.rc
  else
     . /etc/profile.d/sun-jre.rc
  fi &&

  # apache-ant build will fail without junit since 1.7.0
  sedit 's:depends="jars,test-jar":depends="jars":g' build.xml &&

  prepare_install &&

  ./build.sh -Ddist.dir=/usr/share/ant &&
  gather_docs TODO WHATSNEW welcome.html &&

  for each in ant antRun runant.pl runant.py complete-ant-cmd.pl ; do
    ln -sf /usr/share/ant/bin/${each} /usr/bin/${each}
  done

) > $C_FIFO 2>&1
