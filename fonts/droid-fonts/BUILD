DRO=/usr/share/fonts/droid-ttf &&

prepare_install &&

if [ ! -d $DRO ]; then
  mkdir -p $DRO
fi &&

if [ -d old.libraries ]; then
  rmdir old.libraries
fi &&

install -m644 *.ttf $DRO &&
cd $DRO &&
mkfontdir
