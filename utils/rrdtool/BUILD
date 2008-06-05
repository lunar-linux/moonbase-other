(

  # Don't waste my time with your cute scripts Tobias...
  sedit "s/^sleep 1/#sleep 1/g" configure        &&
  sedit "s/^# Just in case/sleep 1/g" configure  &&

  OPTS="$OPTS --enable-static --enable-shared --enable-perl-site-install"  &&

  default_build

) > $C_FIFO 2>&1
