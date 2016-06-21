./autogen.sh &&

cp $SCRIPT_DIRECTORY/term.sh . &&

OPTS+=" --enable-colors256 \
        --with-sys-screenrc=/etc/screenrc" &&

default_build &&

gather_docs doc/FAQ TODO NEWS.* etc/screenrc &&
if [ ! -e /etc/screenrc ]; then
  cp -p etc/etcscreenrc /etc/screenrc
fi
