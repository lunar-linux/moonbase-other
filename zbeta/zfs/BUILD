SPLDIR=$BUILD_DIRECTORY/spl-$VERSION

cd $SPLDIR &&
default_config &&
make ${MAKES:+-j${MAKES}} &&
cd $SOURCE_DIRECTORY && 
OPTS="$OPTS --with-spl=$SPLDIR" default_config &&
make ${MAKES:+-j${MAKES}} &&
prepare_install &&
cd $SPLDIR &&
make install &&
cd $SOURCE_DIRECTORY &&
make install
