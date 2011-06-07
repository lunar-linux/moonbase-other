(

  rm libstdc++.so.6  &&

  if in_depends dropbox Python ; then
    sedit "s:~/.dropbox-dist/dropboxd:/usr/bin/dropboxd:g" dropbox-cli  &&
    chmod 755 dropbox-cli
  fi &&

  prepare_install  &&

  install -d /opt/dropbox  &&
  install -d /usr/bin      &&

  cp -ra *  /opt/dropbox/  &&
  ln -sf /opt/dropbox/dropboxd /usr/bin/dropboxd  &&

  if in_depends dropbox Python ; then
    install -m755 dropbox-cli /usr/bin/dropbox-cli
  fi

) > $C_FIFO 2>&1
