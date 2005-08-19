(

  bad_flags -fomit-frame-pointer
  OPTS="$OPTS --enable-shared"
  if "`installed_version openssl`" eq "0.9.8"; then
    patch_it $SOURCE_CACHE/$SOURCE2 1
  fi &&
  default_build

) > $C_FIFO 2>&1
