prepare_install &&

# install tmpfiles.sh script
make bindir=/usr/bin install &&

# put service files in correct locations
for f in opentmpfiles-dev opentmpfiles-setup; do
  install -Dm644 openrc/$f.confd /etc/conf.d/$f &&
  install -Dm755 openrc/$f.initd /etc/init.d/$f
done
