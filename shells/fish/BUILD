OPTS+=" -DCMAKE_INSTALL_SYSCONFDIR=/etc \
        -DCMAKE_BUILD_TYPE=Release \
        -DFISH_USE_SYSTEM_PCRE2=ON \
        -DWITH_GETTEXT=ON \
         -Wno-dev"

# the compile fails withouit these environment variables
export RUST_BACKTRACE="full"
export FISH_BUILD_VERSION=$VERSION

default_cmake_build
