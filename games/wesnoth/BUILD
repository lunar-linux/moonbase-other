OPTS+=" -DBINDIR=games \
        -DDATAROOTDIR=${MODULE_PREFIX}/share/games/ \
        -DDESKTOPDIR=${MODULE_PREFIX}/share/applications \
        -DICONDIR=${MODULE_PREFIX}/share/pixmaps \
        -DMANDIR=${MODULE_PREFIX}/share/man \
        -DDOCDIR=${MODULE_PREFIX}/share/doc/$MODULE" &&

# fribidi is obsolete and would require 0.10.*
OPTS+=" -DENABLE_FRIBIDI=OFF" &&

# I hate -Werror...
OPTS+=" -DENABLE_STRICT_COMPILATION=OFF" &&

default_cmake_build
