prepare_install &&

# install tmpfiles.sh script
make bindir=/usr/bin install &&

# put service files in correct locations
for f in opentmpfiles-dev opentmpfiles-setup; do
  install -Dm644 openrc/$f.confd /etc/conf.d/$f &&
  sed -e 's|#!/sbin/runscript|#!/usr/bin/openrc-run|g' \
      -i /etc/conf.d/$f &&
  install -Dm755 openrc/$f.initd /etc/init.d/$f
done &&

install -dm755 /etc/runlevels/{boot,sysinit}
ln -snf /etc/init.d/opentmpfiles-dev   /etc/runlevels/sysinit/opentmpfiles-dev &&
ln -snf /etc/init.d/opentmpfiles-setup /etc/runlevels/boot/opentmpfiles-setup  &&
ln -snf /usr/bin/tmpfiles /usr/bin/systemd-tmpfiles
