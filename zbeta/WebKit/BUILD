(

#  . /etc/profile.d/qt4.rc &&

#  bad_flags linker &&

#  WebKitTools/Scripts/build-webkit --gtk --qmakearg=WEBKIT_INC_DIR=/usr/include/WebKit --qmakearg=WEBKIT_LIB_DIR=/usr/lib --debug &&
#  cd WebKitBuild/Debug &&

#  prepare_install &&
#  make install &&

 # install -m755 $SOURCE_DIRECTORY/WebKitBuild/Debug/WebKitTools/GtkLauncher/GtkLauncher /usr/bin

./autogen.sh &&
./configure --prefix=/usr --enable-svg --with-target=x11 &&
default_make

) > $C_FIFO 2>&1
