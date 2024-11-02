# fix metadata path with appstream
sed -i '/appdatadir/s|/appdata|/metainfo/|' Makefile.am &&

./autogen.sh &&

OPTS+=" --enable-dst-correction \
        --enable-contrast \
        --enable-extras \
        --enable-jasper \
        --enable-mime \
        --program-transform-name='s/dcraw*/ufraw-dcraw/'" &&

mv nufraw.desktop{.desktop,} &&
chmod +x generate_schemas.sh mkinstalldirs &&

default_build &&

mkdir -p /usr/share/icons/$MODULE &&
cp icons/* /usr/share/icons/$MODULE
sedit 's:Icon=nufraw:Icon=/usr/share/icons/gimp-nufraw/nufraw.png:' /usr/share/applications/nufraw.desktop
