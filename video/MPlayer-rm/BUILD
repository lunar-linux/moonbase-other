(

  prepare_install                &&
  mkdir -p /usr/lib/real         &&

  for I in $(ls | grep -v old.libraries)
  do
    install -m755 $I /usr/lib/real
  done
	  
  
) > $C_FIFO 2>&1
