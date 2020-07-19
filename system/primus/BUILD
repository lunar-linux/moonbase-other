make &&

prepare_install &&

sed -e '/^PRIMUS_libGL=/cPRIMUS_libGL=/usr/lib/primus' \
    -e '/^exec/iexport __GLVND_DISALLOW_PATCHING=1' \
    primusrun | install -D /dev/stdin /usr/bin/primusrun &&

mkdir -p /usr/lib/primus &&
install -D lib/libGL.so.1 /usr/lib/primus/ &&
install -D primus.bash-completion /usr/share/bash-completion/completions/primusrun &&
install -D primusrun.1 /usr/share/man/man1/
