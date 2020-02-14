touch INSTALL &&
NOCONFIGURE=1 ./autogen.sh &&

if [[ $GSCHEMAS_SUPPORT == "y" ]]; then 
  OPTS+=" --enable-schemas-install"
else
  OPTS+=" --disable-schemas-install"
fi

OPTS+=" --enable-ui \
        --enable-python-library \
        --disable-emoji-dict \
        --disable-memconf \
        --with-ucd-dir=/usr/share/unicode \
        --with-python=python3 \
        --disable-unicode-dict"

default_build
