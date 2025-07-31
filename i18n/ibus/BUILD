touch INSTALL &&
NOCONFIGURE=1 ./autogen.sh &&

if [[ $GSCHEMAS_SUPPORT == "y" ]]; then 
  OPTS+=" --enable-schemas-install"
else
  OPTS+=" --disable-schemas-install"
fi &&

OPTS+=" --enable-ui \
        --enable-python-library \
        --disable-memconf \
        --disable-gtk2 \
        --with-ucd-dir=/usr/share/unicode \
        --with-python=python3 \
        --with-unicode-emoji-dir=$SOURCE_DIRECTORY \
        --with-emoji-annotation-dir=$SOURCE_DIRECTORY/cldr-emoji-annotation/annotations" &&

default_build
