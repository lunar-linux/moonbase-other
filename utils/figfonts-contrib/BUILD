(

  for FILE in $( find . -name "*.gz" ) ;  do 
    tar xzf FILE
  done

  prepare_install &&

  mkdir -p /usr/share/figlet &&
  for FILE in $( find | grep '^.*\.fl[cf]$') ; do 
    install -m644 $FILE /usr/share/figlet
  done

) > $C_FIFO 2>&1
