(
cd $BUILD_DIRECTORY               &&
unpack $SOURCE                    &&
cd $SOURCE_DIRECTORY              &&
prepare_install                   &&
./setup.py install                &&
mkdir -p /usr/share/doc/MenuMaker &&
cp $MOONBASE/x11-utils/MenuMaker/menu2-howto.txt /usr/share/doc/MenuMaker/

) > $C_FIFO 2>&1
