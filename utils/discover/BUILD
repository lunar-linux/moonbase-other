(

  patch_it $SOURCE_CACHE/$SOURCE2 1 &&
  sedit "s:TRUE:true:g" lib/url-xml.c &&
  sedit "s:FALSE:false:g" lib/url-xml.c &&
  default_config && 
  make &&
  make check &&
  prepare_install &&
  make install

) > $C_FIFO 2>&1
