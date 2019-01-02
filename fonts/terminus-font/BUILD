OPTS+=' --psfdir=/usr/share/kbd/consolefonts \
        --x11dir=/usr/share/fonts/terminus'

chmod +x configure &&

default_build &&

install -d /etc/fonts/conf.avail &&
install -Dm644 75-yes-terminus.conf /etc/fonts/conf.avail/75-yes-terminus.conf &&
install -d /etc/fonts/conf.d &&

cd /etc/fonts/conf.d &&
ln -sf ../conf.avail/75-yes-terminus.conf .
