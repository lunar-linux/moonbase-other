SPLDIR=$BUILD_DIRECTORY/spl-$VERSION

cd $BUILD_DIRECTORY && unpack $SOURCE2 &&
cd $SPLDIR &&
default_config &&
make ${MAKES:+-j${MAKES}} &&
cd $SOURCE_DIRECTORY && 
OPTS="$OPTS --with-spl=$SPLDIR" default_config &&
make ${MAKES:+-j${MAKES}} &&
prepare_install &&
cd $SPLDIR &&
mkdir pkg &&

# SPL and ZFS try to install files on top of themselves and fail, so do
# this hack to work around it.
make install DESTDIR=$(cd pkg; pwd) &&
cd pkg &&
tar cf - . | ( cd /; tar xf - ) &&
cd $SOURCE_DIRECTORY &&
mkdir pkg &&
make install DESTDIR=$(cd pkg; pwd) &&
cd pkg && tar cf - . | (cd /;tar xf -) &&
depmod -a &&
rm -rf $SPLDIR
