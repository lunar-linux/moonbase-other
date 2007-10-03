( 

. /etc/profile.d/qt4.rc &&

WebKitTools/Scripts/build-webkit --gtk --qmakearg=WEBKIT_INC_DIR=/usr/include/WebKit --qmakearg=WEBKIT_LIB_DIR=/usr/lib --debug &&
cd WebKitBuild/Release &&
prepare_install &&
make install

) > $C_FIFO 2>&1
