if in_depends $MODULE libiodbc; then
    LDFLAGS="$LDFLAGS -Wl,-rpath,/usr/lib/libiodbc"
 else
    LDFLAGS="$LDFLAGS -Wl,-rpath,/usr/lib/"
fi &&

default_build
