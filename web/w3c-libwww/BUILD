(

  OPTS=$OPTS"--enable-shared --disable-static --with-zlib --with-md5   \
             --with-dav --with-expat --with-extension --without-mysql"

  sedit "s:/lib/mysql/:/lib/:" configure  &&
  sedit "s/(char\ \*)//g" Library/src/HTMethod.c  &&

  bad_flags "-Wl,-O1,--as-needed"  &&
  bad_flags "-Wl,--as-needed"  &&

  default_build

) > $C_FIFO 2>&1
