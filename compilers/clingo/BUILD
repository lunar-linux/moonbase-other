scons -j${MAKES:=1} --build-dir=release $OPTS &&

prepare_install &&

install -m755 {build/release,/usr/bin}/clingo &&
install -m755 {build/release,/usr/bin}/gringo &&
install -m755 {build/release,/usr/bin}/reify &&

if in_depends $MODULE Python; then
  install -m755 {build/release/python,/usr/lib/python2.7/site-packages}/gringo.so
fi &&

if in_depends $MODULE lua; then
  install -m755 {build/release/lua,/usr/lib/lua}/gringo.so
fi &&

gather_docs NOTES examples
