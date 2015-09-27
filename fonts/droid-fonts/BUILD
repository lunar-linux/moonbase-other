DRO=/usr/share/fonts/droid-ttf &&

prepare_install &&

if [ ! -d $DRO ]; then
  mkdir -p $DRO
fi &&

if [ -d old.libraries ]; then
  rmdir old.libraries
fi &&

chmod 644 *.ttf &&
#cp -f $SOURCE_DIRECTORY/*.ttf $DRO &&
install -m644 *.ttf $DRO &&
cd $DRO &&
mkfontdir
