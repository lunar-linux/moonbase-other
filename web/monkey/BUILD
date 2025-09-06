sedit 's:mk_core.h:monkey/mk_core.h:' include/CMakeLists.txt &&
sedit 's:mk_core/:monkey/mk_core/:' include/CMakeLists.txt &&

OPTS+=" -DDEFAULT_PORT=80 \
        -DDEFAULT_USER=http \
        -DCMAKE_INSTALL_SYSCONFDIR=/etc/monkey/ \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DMK_PTHREAD_TLS=ON \
        -DMK_TESTS=ON \
        -DMK_UCLIB=ON \
        -DMK_HTTP2=ON \
        -DMK_PLUGIN_DIRLISTING=ON \
        -DMK_MBEDTLS_SHARED=ON \
        -DCMAKE_BUILD_TYPE=Release"

default_cmake_build        
