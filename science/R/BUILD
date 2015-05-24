
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
