(

  gzip -9 makeself.1                                    &&
  prepare_install                                       &&

  install -m 0755 makeself.sh /usr/bin                  &&
  install -m 0755 makeself-header.sh /usr/bin           &&
  mkdir -p /usr/share/doc/makeself                      &&
  install -m 0644 makeself.lsm /usr/share/doc/makeself  &&
  install -m 0644 makeself.1.gz /usr/man/man1

  pushd .  &&
  cd /usr/bin  &&
  # To be recognized by VirtualBox 4
  ln -sfn makeself.sh makeself  &&
  ln -sfn makeself-header.sh makeself-header  &&
  popd

) > $C_FIFO 2>&1
