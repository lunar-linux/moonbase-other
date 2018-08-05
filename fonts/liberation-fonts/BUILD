LIBTTF=/usr/share/fonts/liberation-fonts-ttf

make  &&
prepare_install  &&

if [ ! -d $LIBTTF ] ; then
  mkdir -p $LIBTTF
fi  &&

if [ -d old.libraries ] ; then
  rmdir old.libraries
fi  &&

cp -f $MODULE-ttf/* $LIBTTF
