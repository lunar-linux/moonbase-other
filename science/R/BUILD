
  if [ -e /usr/lib64/R/doc ] ; then
    rm -rf /usr/lib64/R/doc
  fi &&

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
