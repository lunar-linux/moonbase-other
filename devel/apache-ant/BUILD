(

  export JAVA_HOME=${JAVA_HOME:-/usr/lib/j2sdk1.4.2}
  prepare_install &&
  ./build.sh -Ddist.dir=/usr/share/ant &&
  gather_docs TODO WHATSNEW welcome.html &&
  for each in ant antRun runant.pl runant.py complete-ant-cmd.pl ; do
    ln -sf /usr/share/ant/bin/${each} /usr/bin/${each}
  done

) > $C_FIFO 2>&1
