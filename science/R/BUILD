(

  if [ -e /usr/lib64/R/doc ] ; then
    rm -rf /usr/lib64/R/doc
  fi &&

# A temp fix to the breakage caused by the recent pcre bump.
  sedit "s:_pcre_valid_utf8:_pcre_valid_utf:g" src/main/util.c &&

  OPTS+=" --prefix=/usr --enable-R-shlib" &&

  default_build &&

  if [[ "$DVI_DOCS" == "y" ]] ; then
     make dvi &&
     make install-dvi
  fi &&

  if [[ "$PDF_DOCS" == "y" ]] ; then
     make pdf &&
     make install-pdf
  fi &&

  if [[ "$INFO_DOCS" == "y" ]] ; then
     make info &&
     make install-info
  fi 

) > $C_FIFO 2>&1
