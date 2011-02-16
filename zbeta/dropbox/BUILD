(

  rm libstdc++.so.6       &&

  prepare_install         &&

  mkdir -p /opt/dropbox   &&
  cp -Ra * /opt/dropbox/  &&
  ln -sfn /opt/dropbox/dropboxd /usr/bin/dropboxd  &&

  if in_depends dropbox Python ; then
    install -m 755 $SOURCE_CACHE/$SOURCE2 /usr/bin/dropbox
  fi

) > $C_FIFO 2>&1
