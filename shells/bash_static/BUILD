OPTS=$OPTS" --bindir=/bin \
            --with-installed-readline \
            --with-curses \
            --enable-static-link"

default_config                &&
make                          &&
prepare_install            
cp bash /bin/bash_static
