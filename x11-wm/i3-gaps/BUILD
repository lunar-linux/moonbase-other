OPTS+=" --enable-debug=no --disable-sanitizers"

default_config &&
cd $(arch)-pc-linux-gnu &&
make CPPFLAGS+="-U_FORTIFY_SOURCE" &&
prepare_install &&
make install
