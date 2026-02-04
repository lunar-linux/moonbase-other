OPTS+=" -DCMAKE_INSTALL_SYSCONFDIR=/etc \
        -DCMAKE_BUILD_TYPE=Release \
        -DFISH_USE_SYSTEM_PCRE2=ON \
        -D WITH_MESSAGE_LOCALIZATION=ON \
         -Wno-dev"

# the compile fails withouit these environment variables
export RUST_BACKTRACE="full"
export FISH_BUILD_VERSION=$VERSION

default_cmake_build
