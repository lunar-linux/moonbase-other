(

  rm libstdc++.so.6       &&

  prepare_install         &&

  mkdir -p /opt/dropbox   &&
  cp -Ra * /opt/dropbox/  &&
  ln -sfn /opt/dropbox/dropboxd /usr/bin/dropboxd

  if in_depends dropbox Python ; then
    cp /var/spool/lunar/dropbox.py /usr/bin/dropbox
    chmod 755 /usr/bin/dropbox
  fi

) > $C_FIFO 2>&1
