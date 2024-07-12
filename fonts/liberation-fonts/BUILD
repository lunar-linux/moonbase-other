LIBTTF=/usr/share/fonts/liberation-fonts-ttf &&

prepare_install  &&

if [ ! -d $LIBTTF ] ; then
  mkdir -p $LIBTTF
fi  &&

if [ -d old.libraries ] ; then
  rmdir old.libraries
fi  &&

cp -f * $LIBTTF
