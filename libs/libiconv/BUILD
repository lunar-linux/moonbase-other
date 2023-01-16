OPTS+=" --docdir=/usr/share/doc/libiconv --enable-extra-encodings"

default_config &&
# workaround for insecure rpath
sed -i 's|^hardcode_libdir_flag_spec=.*|hardcode_libdir_flag_spec=""|g' libtool &&
sed -i 's|^runpath_var=LD_RUN_PATH|runpath_var=DIE_RPATH_DIE|g' libtool &&

default_make
