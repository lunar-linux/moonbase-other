(

  prepare_install
  set -x
  mkdir -p /usr/lib/cube
  for DIR in bin bin_unix data docs packages ; do
    cp -a $DIR /usr/lib/cube
  done
  for FILE in autoexec.cfg readme.html servers.cfg ; do
    cp $FILE /usr/lib/cube
  done
  cp $SCRIPT_DIRECTORY/cube /usr/bin
  chmod 755 /usr/bin/cube /usr/lib/cube/bin_unix/*
  set +x

) > $C_FIFO 2>&1
