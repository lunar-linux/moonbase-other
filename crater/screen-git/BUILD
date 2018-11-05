cd src &&
./autogen.sh &&

OPTS+=" --with-sys-screenrc=/etc/screenrc" &&
default_build &&

if [[ ! -e /etc/screenrc ]]; then
  cp -p etc/etcscreenrc /etc/screenrc
fi
