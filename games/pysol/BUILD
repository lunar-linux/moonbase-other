(

  cp $SCRIPT_DIRECTORY/Makefile $SOURCE_DIRECTORY  &&

  (cd $SOURCE_DIRECTORY/src; sh $SCRIPT_DIRECTORY/pysol_kludge.sh)  &&

  prepare_install  &&
  make install

) > $C_FIFO 2>&1
