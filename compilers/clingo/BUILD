scons -j${MAKES:=1} --build-dir=release $OPTS &&
prepare_install &&
install -m755 {build/release,/usr/bin}/clingo &&
gather_docs NOTES
