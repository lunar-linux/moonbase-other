# not sure what this rpm is for, but its not there in 32bit OO, so I removed it
LO_OPT_DIR="/usr/lib/libreoffice${VERSION%.*}"

message "${MESSAGE_COLOR}Unpacking base RPMs and installing...${DEFAULT_COLOR}" &&
for pack in RPMS/*.rpm ; do bsdtar -xf $pack > `basename $pack .rpm` ; done &&
#for i in `ls *.cpio`; do cpio -idmuV < $i ;done &&

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
ln -sf ${LO_OPT_DIR}/program/soffice  /usr/bin/libreoffice${VERSION%.*} &&

for i in $desktopfiles; do
  ln -sf ${LO_OPT_DIR}/share/xdg/$i.desktop /usr/share/applications/libreoffice${VERSION%.*}-$i.desktop
done &&

rm -rf /usr/lib/libreoffice24.8/help/media/icon-themes/formula &&
rm -rf /usr/lib/libreoffice24.8/share/config/soffice.cfg/formula/
