bad_flags -malign-double

OPTS=$OPTS" --bindir=/bin \
            --with-installed-readline \
            --with-curses \
            --enable-static-link"

patch_it $SOURCE_CACHE/$SOURCE2 0 &&
default_config                &&
make                          &&
prepare_install            
cp bash /bin/bash_static
