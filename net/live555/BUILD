(

  sedit "s:-O2 -D:-O2 -fPIC -D:" config.linux

  INST_DIR="/usr/lib/live"

  if [ -d $INST_DIR ] ; then
    mkdir -p $INST_DIR
  fi &&

  ./genMakefiles linux  &&
  make                  &&
  prepare_install       &&
  cp -rf . $INST_DIR

) > $C_FIFO 2>&1
