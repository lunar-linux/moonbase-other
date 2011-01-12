(

  rm libstdc++.so.6 &&

  prepare_install &&

  mkdir -p /opt/dropbox &&
  cp -Ra * /opt/dropbox/ &&
  ln -sfn /opt/dropbox/dropboxd /usr/bin/dropboxd

) > $C_FIFO 2>&1
