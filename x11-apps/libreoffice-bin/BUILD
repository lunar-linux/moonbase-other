LO_VER="$(lvu version libreoffice-bin | cut -d"." -f1-2)"
LO_OPT_DIR="/usr/lib/libreoffice${LO_VER}"

message "${MESSAGE_COLOR}Unpacking base RPMs and installing...${DEFAULT_COLOR}" &&
for pack in RPMS/*.rpm ; do bsdtar -xf $pack > `basename $pack .rpm` ; done &&

desktopfiles="base calc draw impress math startcenter writer xsltfilter" &&

prepare_install &&
cp -dfR opt/* /usr/lib/ &&
cp -dfR usr / &&

# Create some symlinks to /usr/bin
ln -sf ${LO_OPT_DIR}/program/soffice  /usr/bin/soffice  &&
ln -sf ${LO_OPT_DIR}/program/scalc    /usr/bin/scalc    &&
ln -sf ${LO_OPT_DIR}/program/swriter  /usr/bin/swriter  &&
ln -sf ${LO_OPT_DIR}/program/simpress /usr/bin/simpress &&
ln -sf ${LO_OPT_DIR}/program/sbase    /usr/bin/sbase    &&
ln -sf ${LO_OPT_DIR}/program/sdraw    /usr/bin/sdraw    &&
ln -sf ${LO_OPT_DIR}/program/smath    /usr/bin/smath    &&
ln -sf ${LO_OPT_DIR}/program/soffice.bin  /usr/bin/libreoffice${LO_VER} &&

for i in $desktopfiles; do
  ln -sf ${LO_OPT_DIR}/share/xdg/$i.desktop /usr/share/applications/libreoffice${VERSION}-$i.desktop
done
