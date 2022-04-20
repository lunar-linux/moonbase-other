. /etc/profile.d/qt5.rc &&

OPTS+=" USE_SYSTEM_HUNSPELL=1  \
        USE_SYSTEM_QUAZIP=1    \
        OPTION_DEBUG=release   \
        QUAZIP_INCLUDE=/usr/include/QuaZip-Qt5-1.3/quazip/ \
        QUAZIP_LIB=-lquazip1-qt5"

/usr/lib/qt5/bin/qmake texstudio.pro $OPTS &&

default_make
