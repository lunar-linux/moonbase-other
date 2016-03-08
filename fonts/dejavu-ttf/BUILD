DEJ=/usr/share/fonts/dejavu-ttf &&

prepare_install &&

mkdir -p $DEJ %%

if [ -d old.libraries ]; then
  rmdir old.libraries
fi &&

install -m 644 ttf/* $DEJ/ &&

mkfontscale $DEJ &&
mkfontdir $DEJ
