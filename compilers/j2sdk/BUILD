(

  prepare_install                       &&
  cp   -r  $SOURCE_DIRECTORY  /usr/lib  &&
  cd  /usr/lib/$MODULE$VERSION/bin     &&
  for  FILE  in  `ls`;  do
    if  [  -f  $FILE  ];  then
      ln  -sf  /usr/lib/$MODULE$VERSION/bin/$FILE  /usr/bin
    fi
  done &&
  if module_installed mozilla; then
    ln -sf /usr/lib/$MODULE$VERSION/jre/plugin/i386/mozilla/javaplugin_oji.so /usr/lib/mozilla/plugins/
  fi

) > $C_FIFO 2>&1
