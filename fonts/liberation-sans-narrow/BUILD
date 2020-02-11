
LIBTTF=/usr/share/fonts/$MODULE &&

prepare_install  &&

if [ ! -d $LIBTTF ] ; then
  mkdir -p $LIBTTF
fi  &&

if [ -d old.libraries ] ; then
  rmdir old.libraries
fi  &&

cp -f *.ttf $LIBTTF
