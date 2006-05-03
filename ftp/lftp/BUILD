(
  
  # NOTE: this patch is temporary for lftp-3.4.6 only. It should be repaired
  # by the lftp devs in the next release
  cd src && patch_it $SOURCE_CACHE/$SOURCE2 0 && cd .. &&
  if [ "$CONFIG_NLS" == "n" ]; then
    OPTS="$OPTS --disable-nls"
  else
    OPTS="$OPTS --enable-nls"
  fi
  default_build
              
) > $C_FIFO 2>&1
