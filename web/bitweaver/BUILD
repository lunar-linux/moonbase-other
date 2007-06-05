(

  INST_DIR="/var/$MODULE-$VERSION"
  export INST_DIR

  prepare_install &&

  if [ ! -d $INST_DIR ]; then
        mkdir -p $INST_DIR
  fi &&

  cp -R $SOURCE_DIRECTORY/* $INST_DIR/

) > $C_FIFO 2>&1
