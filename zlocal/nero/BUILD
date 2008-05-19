(

  prepare_install &&

  mkdir -p /etc/nero &&
  install -m644 $SOURCE_DIRECTORY/etc/nero/config /etc/nero/ &&

  cd usr &&

  for i in ./ ; do
    cp -r $i/* /usr/$i/
  done    

) > $C_FIFO 2>&1
