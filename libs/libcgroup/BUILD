OPTS+=" --enable-opaque-hierarchy=name=systemd" &&

default_build &&

install -D -m0644 samples/cgconfig.conf /etc/cgconfig.conf.samples &&
install -D -m0644 samples/cgrules.conf /etc/cgrules.conf.samples &&
install -D -m0644 samples/cgsnapshot_blacklist.conf /etc/cgsnapshot_blacklist.conf.samples
