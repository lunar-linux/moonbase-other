source /etc/profile.d/qt6.rc &&
export XML_CATALOG_FILES=/etc/xml/catalog

# Use internal fmt for now should you have
# system fmt installed
export FMT_INTERNAL=yes

export MOC=/usr/lib/qt6/moc
export RCC=/usr/lib/qt6/rcc
export UIC=/usr/lib/qt6/uic

./autogen.sh &&

OPTS+=" --with-boost=/usr  \
        --with-boost-libdir=/usr/lib \
        --with-boost=yes \
        --disable-update-check \
        --with-qmake6=/usr/lib/qt6/bin/qmake6"

default_config &&
rake V=1 &&

prepare_install &&
rake install
