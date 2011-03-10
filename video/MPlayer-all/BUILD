(

  prepare_install          &&

  mkdir -p /usr/lib/win32  &&

  # Filenames can contain spaces
  find -maxdepth 1 -type f | while read FILE ; do
    if [ ! -f /usr/lib/win32/"$FILE" ] ; then
      install -m755 "$FILE" /usr/lib/win32/
    fi
  done

) > $C_FIFO 2>&1
