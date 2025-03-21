patch -Np2 -i $SCRIPT_DIRECTORY/0001-fix_include.patch  

OPTS+=" -DDEFAULT_PORT=80 \
        -DDEFAULT_USER=http \
        -DPID_FILE=/run/monkey/monkey.pid.80 \
        -DINSTALL_WEBROOTDIR=/srv/http \
        -DCMAKE_INSTALL_SYSCONFDIR=/etc/monkey/ \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DMK_PTHREAD_TLS=ON \
        -DMK_UCLIB=ON \
        -DMK_HTTP2=ON \
        -DMK_PLUGIN_DIRLISTING=ON \
        -DMK_MBEDTLS_SHARED=ON \
        -DCMAKE_BUILD_TYPE=Release"

default_cmake_build        
