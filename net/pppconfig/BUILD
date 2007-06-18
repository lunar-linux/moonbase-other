(

  prepare_install

  # pppconfig searches in /etc/chatscripts instead of /etc/chat, so we just link it
  test -e /etc/chatscripts || ln -s /etc/ppp/chat /etc/chatscripts

  install  -D  $SOURCE_DIRECTORY/pppconfig    /usr/sbin/pppconfig              &&
  install  -D  $SOURCE_DIRECTORY/0dns-up      /etc/ppp/ip-up.d/0dns-up         &&
  install  -D  $SOURCE_DIRECTORY/0dns-down    /etc/ppp/ip-down.d/0dns-down     &&
  install  -D  $SOURCE_DIRECTORY/man/pppconfig.8  /usr/share/man/man8/pppconfig.8

) > $C_FIFO 2>&1
