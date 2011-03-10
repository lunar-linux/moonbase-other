(

  rm libstdc++.so.6       &&

  prepare_install         &&

  mkdir -p /opt/dropbox   &&
  cp -Ra * /opt/dropbox/  &&
  ln -sfn /opt/dropbox/dropboxd /usr/bin/dropboxd  &&

  if in_depends dropbox Python ; then
    cp -f $SOURCE_CACHE/$SOURCE2 dropbox  &&
    sedit "s:~/.dropbox-dist/dropboxd:/usr/bin/dropboxd:" dropbox  &&
    install -m 755 dropbox /usr/bin/
  fi

) > $C_FIFO 2>&1
