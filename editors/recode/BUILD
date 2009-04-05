(

  patch_it $SOURCE2 1 &&
  patch_it $SOURCE3 1 &&

  cp /usr/share/automake/config.sub $SOURCE_DIRECTORY  &&

  export SED="/bin/sed"  &&
  export max_cmd_len=32768  &&

  default_build  &&
  install -m0755 $SCRIPT_DIRECTORY/dos2unix /usr/bin/  &&
  install -m0755 $SCRIPT_DIRECTORY/unix2dos /usr/bin/

) > $C_FIFO 2>&1
