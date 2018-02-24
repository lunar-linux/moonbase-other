prepare_install &&

# install tmpfiles.sh script
make bindir=/usr/bin install &&
ln -snf /usr/bin/sysusers /usr/bin/systemd-sysusers &&

install -Dm755 openrc/opensysusers.initd /etc/init.d/opensysusers &&
ln -sf /etc/init.d/opensysusers /etc/runlevels/boot/opensysusers
