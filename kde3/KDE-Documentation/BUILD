(

  prepare_install                            &&
  mkdir -p ${KDE_PREFIX:-$KDEDIR}/share/doc  &&
  bzcat $SOURCE_CACHE/$SOURCE | tar xvf - -C ${KDE_PREFIX:-$KDEDIR}/share/doc
 
) > $C_FIFO 2>&1
