(

  prepare_install          &&
  mkdir -p /usr/lib/win32  &&

  for FILE in $(ls | grep -v old.libraries) ; do
    if [ ! -f /usr/lib/win32/$FILE ] ; then
      install -m755 $FILE /usr/lib/win32
    fi
  done

) > $C_FIFO 2>&1
