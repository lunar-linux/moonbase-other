export AUTO_GOPATH=1 DOCKER_BUILDTAGS="seccomp"
export DOCKER_GITCOMMIT
hack/make.sh dynbinary &&

if in_depends $MODULE go-md2man; then
  man/md2man-all.sh 2> /dev/null
fi &&

prepare_install &&

# Docker files
install -Dm0755 bundles/$VERSION/dynbinary-client/docker-$VERSION /usr/bin/docker &&
install -Dm0755 bundles/$VERSION/dynbinary-daemon/dockerd-$VERSION /usr/bin/dockerd &&

# useful symlinks
for i in containerd containerd-shim ctr runc; do
  ln -sf $i /usr/bin/docker-${i}
done &&

install -Dm0644 contrib/completion/bash/docker /usr/share/bash-completion/completions/docker &&
install -Dm0644 $SCRIPT_DIRECTORY/$MODULE.conf /usr/lib/sysusers.d/ &&

# Systemd services
install -Dm0644 contrib/init/systemd/docker.service /usr/lib/systemd/system/docker.service &&
install -Dm0644 contrib/init/systemd/docker.socket /usr/lib/systemd/system/docker.socket &&
install -Dm0644 $SCRIPT_DIRECTORY/docker.conf /usr/lib/sysusers.d/docker.conf &&

if in_depends $MODULE go-md2man; then
  cp -r man/man* /usr/share/man/
fi
