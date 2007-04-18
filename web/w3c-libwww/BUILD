(
  
   sedit "s:/lib/mysql/:/lib/:" configure  &&
	 sedit "s/(char\ \*)//g" Library/src/HTMethod.c  &&
   
#	 patch_it $SOURCE10 1 &&

  OPTS=$OPTS"--enable-shared --with-zlib --with-md5 --with-dav \
             --with-expat --with-extension --without-mysql"
  default_build

) > $C_FIFO 2>&1
