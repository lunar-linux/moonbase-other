cd lib/magellan_source &&

make &&

cd $SOURCE_DIRECTORY &&

_conkyvar="/usr/share/conkywx"

# install script
install -D -m755 conkywx.bin   /usr/bin/conkywx &&
install -D -m755 lib/wxmp.bin  /usr/bin/wxmp &&
install -D -m755 lib/wxrss.bin /usr/bin/wxrss &&

mkdir -p ${_conkyvar}/lang
mkdir -p /usr/share/fonts/TTF/conkywx
mkdir -p ${_conkyvar}/examples
mkdir -p ${_conkyvar}/images/daynight
mkdir -p ${_conkyvar}/images/windrose-2
mkdir -p ${_conkyvar}/images/lua_clock
mkdir -p ${_conkyvar}/images/wxicons-2
mkdir -p ${_conkyvar}/images/windrose-1
mkdir -p ${_conkyvar}/images/wxicons-1
mkdir -p ${_conkyvar}/images/wxicons-3
mkdir -p ${_conkyvar}/images/moonicons
mkdir -p ${_conkyvar}/images/bgrounds
mkdir -p ${_conkyvar}/images/wxicons-4
mkdir -p ${_conkyvar}/images/wxicons-5
mkdir -p ${_conkyvar}/images/wxicons-6
mkdir -p ${_conkyvar}/images/windrose-3
mkdir -p ${_conkyvar}/images/wxicons-7
mkdir -p ${_conkyvar}/images/lua_windvane
mkdir -p ${_conkyvar}/help
mkdir -p ${_conkyvar}/lib
mkdir -p ${_conkyvar}/lib/wxPP
mkdir -p ${_conkyvar}/lib/wxDate
mkdir -p /usr/share/applications

mkdir -p /usr/share/fonts/TTF/conkywx &&

prepare_install &&

install -D -m755 conkywx.sh ${_conkyvar}/ &&
install -D -m755 conky-restart.sh ${_conkyvar}/ &&
install -D -m755 run-conkywx.sh ${_conkyvar}/ &&
install -D -m644 stations.txt ${_conkyvar}/ &&

install -D -m644 lang/* ${_conkyvar}/lang/ &&
install -D -m644 fonts/* /usr/share/fonts/TTF/conkywx/ &&
install -D -m644 examples/* ${_conkyvar}/examples/ &&
install -D -m644 images/daynight/*   ${_conkyvar}/images/daynight/ &&
install -D -m644 images/windrose-2/* ${_conkyvar}/images/windrose-2/ &&
install -D -m644 images/lua_clock/*  ${_conkyvar}/images/lua_clock/ &&
install -D -m644 images/wxicons-2/*  ${_conkyvar}/images/wxicons-2/ &&
install -D -m644 images/windrose-1/* ${_conkyvar}/images/windrose-1/ &&
install -D -m644 images/wxicons-1/*  ${_conkyvar}/images/wxicons-1/ &&
install -D -m644 images/wxicons-3/*  ${_conkyvar}/images/wxicons-3/ &&
install -D -m644 images/moonicons/*  ${_conkyvar}/images/moonicons/ &&
install -D -m644 images/bgrounds/*   ${_conkyvar}/images/bgrounds/ &&
install -D -m644 images/wxicons-4/*  ${_conkyvar}/images/wxicons-4/ &&
install -D -m644 images/wxicons-5/*  ${_conkyvar}/images/wxicons-5/ &&
install -D -m644 images/wxicons-6/*  ${_conkyvar}/images/wxicons-6/ &&
install -D -m644 images/windrose-3/* ${_conkyvar}/images/windrose-3/ &&
install -D -m644 images/wxicons-7/*  ${_conkyvar}/images/wxicons-7/ &&
install -D -m644 images/lua_windvane/* ${_conkyvar}/images/lua_windvane/ &&
install -D -m644 help/*     ${_conkyvar}/help/ &&
install -D -m644 lib/*.pl   ${_conkyvar}/lib/ &&
install -D -m644 lib/*.pm   ${_conkyvar}/lib/ &&
install -D -m755 lib/*.lua  ${_conkyvar}/lib/ &&
install -D -m755 lib/*.sh   ${_conkyvar}/lib/ &&
install -D -m755 lib/magellan_source/magellan ${_conkyvar}/lib/ &&
install -D -m755 lib/wxDate/*.pm ${_conkyvar}/lib/wxDate/ &&
install -D -m644 examples/wxmp.desktop /usr/share/applications/ &&

#install -D -m644 lib/wxPP/* ${_conkyvar}/lib/wxPP/ &&

# install man page
gzip -c -9 conkywx.1 > conkywx.1.gz &&
install -D -m644 conkywx.1.gz /usr/share/man/man1/
