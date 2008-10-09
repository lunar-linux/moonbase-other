(
  
  sedit "s:/lib/mysql/:/lib/:" configure  &&
  sedit "s/(char\ \*)//g" Library/src/HTMethod.c  &&
   
  OPTS=$OPTS"--enable-shared --with-zlib --with-md5 --with-dav \
             --with-expat --with-extension --without-mysql"

  bad_flags "--as-needed" &&

  default_build

) > $C_FIFO 2>&1
