(

  prepare_install
  set -x
  mkdir -p /usr/games/cube
  for DIR in bin bin_unix data docs packages ; do
    cp -a $DIR /usr/games/cube
  done
  for FILE in autoexec.cfg readme.html servers.cfg ; do
    cp $FILE /usr/games/cube
  done
  cp $SCRIPT_DIRECTORY/cube /usr/games/cube
  chmod 755 /usr/games/cube/cube /usr/games/cube/bin_unix/*
  set +x

) > $C_FIFO 2>&1
