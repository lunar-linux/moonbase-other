(

  export CC="cc $CFLAGS"
#  patch_it /var/spool/lunar/$SOURCE3 0
  cd libImaging                     &&
  ./configure     --prefix=/usr      \
                  $OPTS             &&
  make                              &&
  cd ..                             &&
  python setup.py build             &&
  prepare_install		                &&
  cd libImaging                     &&
  cp ImConfig.h ImPlatform.h Imaging.h /usr/include/python2.3  &&
  cd ..                             &&
  python setup.py install           &&
  mkdir -p $DOCUMENT_DIRECTORY/pil  &&
  cp $SOURCE_CACHE/$SOURCE2  $DOCUMENT_DIRECTORY/pil 

) > $C_FIFO 2>&1
