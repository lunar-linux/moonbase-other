
if [ "$PGO" == "y" ] ; then
  #CCache breaks the pgo build
  export CCACHE_DISABLE=1  &&
  echo "mk_add_options PROFILE_GEN_SCRIPT='python $MOZ_OBJDIR/_profile/pgo/profileserver.py'" >> mozconfig  &&

  make -f client.mk profiledbuild
else
  make -f client.mk build
fi  &&

cd ${MOZ_OBJDIR}  &&
prepare_install   &&
make install      &&

install -Dm 644 {"$SCRIPT_DIRECTORY",/usr/share/applications}/firefox.desktop  &&

for s in 16 22 24 32 48 256 ; do
  install -Dm 644 $SOURCE_DIRECTORY/browser/branding/official/default${s}.png /usr/share/icons/hicolor/${s}x${s}/apps/firefox.png
done &&

# symlink plugins folder
ln -sfn /usr/lib/lunar/plugins "/usr/lib/firefox-$VERSION/browser/plugins"
