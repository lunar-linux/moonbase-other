if [ "`get_module_config DOCS`" = "n" ]; then
  sedit "s/install_utilities install_docs/install_utilities/g" dist/Makefile.in
fi &&

# The uudecode from uudeview module does not work.
# It returs 0 meaning errorless execution but actually does nothing:
# it does not decode uue encoded files. That is why configure breaks
# if uudeview module is installed.
if module_installed uudeview; then
  sedit 's/uudecode/nouudecode/g' dist/configure
fi &&

cd build_unix &&
../dist/configure --prefix=/usr      \
                  --build=$BUILD     \
                  --enable-compat185 \
                  --enable-cxx       \
                  --enable-dbm       \
                  --disable-java     \
                  --enable-shared    \
                  --disable-static   \
                  --disable-mutexsupport \
                  $OPTS             &&

sedit "s:LIBSO_LIBS=:LIBSO_LIBS=-lpthread :" Makefile &&
sedit  's/$(prefix)\/docs/\/usr\/share\/doc\/db/' Makefile &&
default_make
