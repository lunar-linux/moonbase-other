(

  prepare_install          &&
  mkdir -p /usr/lib/win32  &&

  for I in $(ls | grep -v old.libraries)
  do
    install -m755 $I /usr/lib/win32
  done
  
) > $C_FIFO 2>&1
