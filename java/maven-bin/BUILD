(

  MVNSHARE=/usr/share/maven

  rm -f bin/*.bat &&
  prepare_install &&
  install -m 755 -d $MVNSHARE/ &&
  cp -rp {bin,boot,conf,lib} $MVNSHARE/ &&
  ln -sf $MVNSHARE/bin/mvn /usr/bin/mvn &&
  ln -sf $MVNSHARE/bin/mvnDebug /usr/bin/mvnDebug &&
  ln -sf $MVNSHARE/bin/m2 /usr/bin/m2 &&

  gather_docs LICENSE* NOTICE* README*
) > $C_FIFO 2>&1
