(

  sedit 's:babl-0.0:babl-0.1:g' gir/Makefile.in
   
  if module_installed gst-plugins-bad ; then
    lrm gst-plugins-bad
    HAS_BAD='y'
  else
    HAS_BAD='n'
  fi  &&

  default_build  &&

  if [ $HAS_BAD = 'y' ] ; then
    lin gst-plugins-bad
  fi


) > $C_FIFO 2>&1
