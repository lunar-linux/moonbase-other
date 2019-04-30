mv configure.{in,ac} &&
autoreconf &&
libtoolize &&

OPTS+=" --with-apr=`which apr-$(installed_version apr | cut -d. -f1)-config` \
        --with-iconv=/usr"

default_build
