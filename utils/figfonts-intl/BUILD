(

  for foo in `find|grep '^.*gz$'` ; do
    tar xzf $foo
  done

  prepare_install            &&
  
  mkdir -p /usr/share/figlet &&
  for foo in `find|grep '^.*\.fl[cf]$'` ; do
    install -m0644 $foo /usr/share/figlet/
  done

) > $C_FIFO 2>&1
