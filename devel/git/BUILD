(

  unpack $SOURCE2 &&
  make prefix=/usr CFLAGS="$CFLAGS" LDFLAGS="$LDFLAGS" NO_CROSS_DIRECTORY_HARDLINKS=1 $OPTS all &&
  prepare_install  &&
  make prefix=/usr CFLAGS="$CFLAGS" LDFLAGS="$LDFLAGS" NO_CROSS_DIRECTORY_HARDLINKS=1 $OPTS install &&
  install -m 755 contrib/gitview/gitview /usr/bin/ &&
  install -m 644 contrib/completion/git-completion.bash /etc/profile.d/git-completion.rc &&
  install -m 644 contrib/completion/git-prompt.sh /etc/profile.d/git-prompt.rc &&
  for i in man?; do
      [ -d /usr/share/man/$i ] || mkdir -p /usr/share/man/$i
      install -m 644 $i/* /usr/share/man/$i/
  done &&

  if [ "`get_module_config DOCS`" = "y" ] ; then
    gather_docs Documentation/*.txt Documentation/howto/*.txt Documentation/technical/*.txt contrib/gitview/gitview.txt
  fi

) > $C_FIFO 2>&1
