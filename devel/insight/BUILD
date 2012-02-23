(

  OPTS+=" --disable-werror" &&

  rm -rf /usr/share/itk3.2 &&
  
  sedit "s:mkdir:mkdir -p:g" itcl/config/mkinstalldirs &&

  default_build

) > $C_FIFO 2>&1
