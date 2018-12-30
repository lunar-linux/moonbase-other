OPTS+=" -DBINDIR=games \
        -DDATAROOTDIR=${MODULE_PREFIX}/share/games/ \
        -DDESKTOPDIR=${MODULE_PREFIX}/share/applications \
        -DICONDIR=${MODULE_PREFIX}/share/pixmaps \
        -DMANDIR=${MODULE_PREFIX}/share/man \
        -DDOCDIR=${MODULE_PREFIX}/share/doc/$MODULE \
        -DFIFO_DIR=/var/run/wesnothd"

# fribidi is pretty much obsolete
OPTS+=" -DENABLE_FRIBIDI=OFF"

# boost tanks the build over here
OPTS+=" -DENABLE_BOOST_FILESYSTEM=OFF"

# I hate -Werror...
OPTS+=" -DENABLE_STRICT_COMPILATION=OFF"

default_cmake_build
