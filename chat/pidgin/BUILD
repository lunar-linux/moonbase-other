(

  #MSN chokes on TLS 1.1, this lets pidgin retry the connection,
  #but tries using TLS 1.0 instead. No more "Connecting..."
  #NSS only supports TLS 1.0, so it never has problems
  #Probably needs to be removed at the next version bump -zmcgrew
  if in_depends $MODULE gnutls ; then
    patch_it $SOURCE2 0
  fi &&

  OPTS+=" --disable-meanwhile --disable-nm"
  default_build

) > $C_FIFO 2>&1
