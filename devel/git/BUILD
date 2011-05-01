(

  patch_it $SOURCE3 0 &&
  unpack $SOURCE2 &&
  sedit "s/-g -O2/${CFLAGS}/" Makefile &&
  make prefix=/usr strip &&
  prepare_install  &&
  make prefix=/usr install &&
  # this hack added by tchan 20080915, because the lunar git-makefile patch is doing strange things
  cd /usr/libexec/git-core && ln -sf /usr/bin/git git && cd - &&
  cp -p contrib/gitview/gitview /usr/bin &&
  install -m 644 contrib/completion/git-completion.bash /etc/profile.d/git-completion.rc &&
  for i in man?; do
      [ -d /usr/share/man/$i ] || mkdir -p /usr/share/man/$i
      install -m 644 $i/* /usr/share/man/$i/
  done &&

  if [ "`get_module_config DOCS`" = "y" ] ; then
    gather_docs Documentation/*.txt Documentation/howto/*.txt Documentation/technical/*.txt contrib/gitview/gitview.txt
  fi

) > $C_FIFO 2>&1
