OPTS+=" --disable-gl \
        --disable-doc \
        --disable-cxx \
        --disable-debug \
        --disable-csharp \
        --disable-static"

#java bindings are broken
OPTS+=" --disable-java"

bad_flags "-Wl,-O1,--as-needed" &&
bad_flags "-Wl,--as-needed" &&

default_build
