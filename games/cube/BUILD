(

  cd source                &&
  unzip -o cube*.zip       &&
  cd src                   &&
  sedit "s:^CXXOPTFLAGS:CXXOPTFLAGS=$CXXFLAGS -Wno-deprecated #:" Makefile
  sedit "s:CLIENT_LIBS=:CLIENT_LIBS=-L/usr/X11R6/lib :" Makefile
  make all                 &&
  cd ../..                 &&

  prepare_install
  
  set -x
  mkdir -p /usr/games/cube/bin_unix
  install -m 755 source/src/cube_client /usr/games/cube/bin_unix/cube_client
  install -m 755 source/src/cube_server /usr/games/cube/bin_unix/cube_server
  for DIR in data docs packages ; do
    cp -a $DIR /usr/games/cube
  done
  for FILE in autoexec.cfg readme.html servers.cfg ; do
    cp $FILE /usr/games/cube
  done
  cp $SCRIPT_DIRECTORY/cube /usr/games/cube
  chmod 755 /usr/games/cube/cube /usr/games/cube/bin_unix/*
  set +x


) > $C_FIFO 2>&1
