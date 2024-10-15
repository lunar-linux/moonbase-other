add_priv_user clamav:clamav -s /usr/bin/false -c "clamav" &&

OPTS+=" -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_INSTALL_SBINDIR=bin \
        -DAPP_CONFIG_DIRECTORY=/etc/clamav \
        -DDATABASE_DIRECTORY=/var/lib/clamav \
        -DENABLE_EXTERNAL_MSPACK=ON \
        -Wno-dev"

cmake -B $MODULE-$VERSION -S . $OPTS &&
cmake --build $MODULE-$VERSION &&
prepare_install &&
cmake --install $MODULE-$VERSION

mkdir -p -m 0755 /var/lib/clamav &&

install -Dm644 $SCRIPT_DIRECTORY/clamd.conf /etc/clamav/clamd.conf &&
install -Dm644 $SCRIPT_DIRECTORY/freshclam.conf /etc/clamav/freshclam.conf &&
install -Dm644 $SCRIPT_DIRECTORY/sysusers.d/clamav.conf /usr/lib/sysusers.d/clamav.conf &&
install -Dm644 $SCRIPT_DIRECTORY/clamav-milter.conf /etc/clamav/clamav-milter.conf &&

#Fix clamav-daemon sbin pathing
sedit 's:/usr/sbin:/usr/bin:' /usr/lib/systemd/system/clamav-daemon.service
