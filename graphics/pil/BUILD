(

  export CC="cc $CFLAGS"
  cd libImaging                     &&
  ./configure     --prefix=/usr      \
                  $OPTS             &&
  make                              &&
  cd ..                             &&
  python setup.py build             &&
  prepare_install		                &&
  cd libImaging                     &&
  cp ImConfig.h ImPlatform.h Imaging.h /usr/include/python2.2  &&
  cd ..                             &&
  python setup.py install           &&
  mkdir -p $DOCUMENT_DIRECTORY/pil  &&
  cp $SOURCE_CACHE/$SOURCE2  $DOCUMENT_DIRECTORY/pil 

) > $C_FIFO 2>&1
