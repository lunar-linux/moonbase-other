(

  groupadd -f gnokii &&

  OPTS+=" --enable-security --disable-xdebug --disable-libpcsclite" &&

  default_build &&

  install -m 644 Docs/sample/45-nokiadku2.rules /lib/udev/rules.d/
  cp Docs/sample/gnokiirc /etc/gnokiirc
  
) > $C_FIFO 2>&1
