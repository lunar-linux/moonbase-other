(

  sedit "s:extra_compile_args=EXTRA_COMPILE_ARGS:extra_compile_args=None:" setup.py &&
  sedit "s:extra_link_args=EXTRA_LINK_ARGS:extra_link_args=None:" setup.py &&
  python setup.py build_ext         &&
  prepare_install	            &&
  cd libImaging                     &&
  cp ImPlatform.h Imaging.h /usr/include/python2.4  &&
  cd ..                             &&
  python setup.py install           &&
  mkdir -p $DOCUMENT_DIRECTORY/pil  &&
  cp $SOURCE_CACHE/$SOURCE2  $DOCUMENT_DIRECTORY/pil 

) > $C_FIFO 2>&1
