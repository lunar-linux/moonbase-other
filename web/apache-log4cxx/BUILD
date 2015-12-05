# Adding this include does not effect the build. It's presence is/may be needed by other apps using these two files.
sedit "s:bytebuffer.h>:bytebuffer.h> \n #include <cstring>:" src/main/cpp/socketoutputstream.cpp src/main/cpp/inputstreamreader.cpp &&

if in_depends $MODULE libiodbc; then
    LDFLAGS="$LDFLAGS -Wl,-rpath,/usr/lib/libiodbc"
 else
    LDFLAGS="$LDFLAGS -Wl,-rpath,/usr/lib/"
fi &&

default_build
