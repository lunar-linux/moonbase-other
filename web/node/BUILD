patch -d . -Rp1 < $SCRIPT_DIRECTORY/system-c-ares.patch &&

./configure --prefix=/usr \
            --without-npm &&

default_make &&

# make the directory for modules install
mkdir -p /usr/lib/node_modules
