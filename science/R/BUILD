(

  CFLAGS=`echo $CFLAGS | sed s/-ffast-math//` &&
  CXXFLAGS=`echo $CXXFLAGS | sed s/-ffast-math//` &&

  if [ -e /usr/lib64/R/doc ] ; then
    rm -rf /usr/lib64/R/doc
  fi &&

  OPTS+=" --prefix=/usr --enable-R-shlib" &&

  default_config &&
  make &&

  prepare_install    &&
  make install-strip &&

  if [[ "$DVI_DOCS" == "y" ]] ; then
     make install-dvi
  fi &&

  if [[ "$PDF_DOCS" == "y" ]] ; then
     make install-pdf
  fi &&

  if [[ "$INFO_DOCS" == "y" ]] ; then
     make install-info
  fi 

) > $C_FIFO 2>&1
