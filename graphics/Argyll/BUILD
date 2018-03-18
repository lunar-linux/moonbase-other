# From Gentoo argyllcms ebuild
echo "LINKFLAGS += ${LDFLAGS} ;" >> Jamtop
#echo "STDLIBS += -ldl -lrt -lX11 -lXext -lXxf86vm -lXinerama -lXrandr -lXau -lXdmcp -lXss -ltiff -ljpeg ;" >> Jamtop

CCOPTFLAG="$CFLAGS" 
./makeall.sh &&
./makeinstall.sh &&
./makepackagebin.sh &&
rm {bin,ref}/License.txt
rm {doc,ref}/afiles

prepare_install &&

rm ./bin/*.txt
install -m755 ./bin/* /usr/bin &&
mkdir -p /usr/share/$MODULE/ref
install -m644 ./ref/*.* /usr/share/$MODULE/ref &&
install -m644 ./profile/*.sp /usr/share/$MODULE/ref &&
install -m644 ./scanin/*.c?? /usr/share/$MODULE/ref &&

# Because there is just html documentation we have to move it
mkdir -p /usr/share/$MODULE/doc/ccmxs
install -m644 ./doc/ccmxs/*.ccmx /usr/share/$MODULE/doc/ccmxs &&
install -m644 ./doc/*.* /usr/share/$MODULE/doc &&
mkdir -p /usr/lib/udev/rules.d
install -m644 ./usb/55-Argyll.rules /usr/lib/udev/rules.d/55-Argyll.rules
