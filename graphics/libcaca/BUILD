sedit "s:\$(am__py_compile) --destdir \"\$(DESTDIR)\":\$(am__py_compile):" python/Makefile.in &&

OPTS+=" --disable-doc \
        --disable-debug \
        --disable-gl \
        --disable-csharp \
        --disable-cxx \
        --disable-static" &&

#java bindings are broken
OPTS+=" --disable-java" &&

bad_flags "-Wl,-O1,--as-needed" &&
bad_flags "-Wl,--as-needed" &&

default_build
