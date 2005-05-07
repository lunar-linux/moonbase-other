(

  find . -type d -exec chmod 0755 {} \;
  prepare_install &&
  python setup.py --berkeley-db=/usr install 

) > $C_FIFO 2>&1

