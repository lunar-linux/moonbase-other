(   

  ./configure --prefix=/usr &&

  default_make


  if [ ! -e /etc/linux_logo.conf ];  then
     echo "-t \"Lunar-Linux\" -f -u -y -L banner" > linux_logo.conf
     install -m644 linux_logo.conf /etc/
  fi

) > $C_FIFO 2>&1
