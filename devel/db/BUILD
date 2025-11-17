cp /usr/share/autoconf/build-aux/config.* dist/ &&

cd dist && ./s_config &&

if [ "`get_module_config DOCS`" = "n" ]; then
  sedit "s/install_utilities install_docs/install_utilities/g" Makefile.in
fi &&

# The uudecode from uudeview module does not work.
# It returs 0 meaning errorless execution but actually does nothing:
# it does not decode uue encoded files. That is why configure breaks
# if uudeview module is installed.
if module_installed uudeview; then
  sedit 's/uudecode/nouudecode/g' configure
fi &&

cd ../build_unix &&

export CFLAGS+=" -std=gnu99"

OPTS+=" --prefix=/usr \
        --build=$BUILD     \
        --bindir=/usr/bin/db5.3 \
        --includedir=/usr/include/db5.3 \
        --enable-compat185 \
        --enable-cxx       \
        --enable-dbm       \
        --disable-tcl      \
        --disable-java     \
        --enable-shared    \
        --disable-static   \
        --disable-mutexsupport \
        --enable-stl"

../dist/configure $OPTS &&

sedit "s:LIBSO_LIBS=:LIBSO_LIBS=-lpthread :" Makefile &&
sedit  's/$(prefix)\/docs/\/usr\/share\/doc\/db/' Makefile &&
default_make
