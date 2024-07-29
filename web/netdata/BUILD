if in_depends $MODULE go; then
  export GOPROXY=https://proxy.golang.org
fi &&

add_priv_user netdata:netdata &&

OPTS+=" -DENABLE_PLUGIN_LOGS_MANAGEMENT=ON \
        -DENABLE_PLUGIN_FREEIPMI=OFF \
        -DENABLE_PLUGIN_XENSTAT=OFF \
        -DCMAKE_INSTALL_PREFIX=/ \
        -DCMAKE_BUILD_TYPE=Release \
        -Wno-dev"

cmake -B $MODULE-build -G Ninja . $OPTS &&
cmake --build $MODULE-build &&

prepare_install &&
cmake --install $MODULE-build &&

if [ ! -f "/etc/netdata/netdata.conf" ];then
  install -Dm644 system/netdata.conf /etc/netdata/netdata.conf &&
  install -Dm644 system/netdata.conf /etc/netdata/netdata.conf.default
fi &&

install -Dm0644 $MODULE-build/system/logrotate/netdata /etc/logrotate.d/netdata &&

if module_installed systemd; then
   install -Dm0644 $MODULE-build/system/systemd/netdata.service.v235 /usr/lib/systemd/system/netdata.service &&
   install -Dm0644 $MODULE-build/system/systemd/netdata-updater.service /usr/lib/systemd/system/netdata-updater.service &&
   install -Dm0644 $SCRIPT_DIRECTORY/sysusers.d/netdata.conf /usr/lib/sysusers.d/netdata.conf
fi
