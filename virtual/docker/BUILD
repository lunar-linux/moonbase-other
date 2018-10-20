export GOPATH="$SOURCE_DIRECTORY"
export PATH="$SOURCE_DIRECTORY/bin:$PATH"
export LDFLAGS="-s"
export CFLAGS="$CFLAGS -Wl,-z,relro -Wl,-z,now"


_go_build_path() {
  mkdir -p "$GOPATH/src/${2%/*}"
  rm -f "$GOPATH/src/$2"
  ln -rsT "$1" "$GOPATH/src/$2"
  pushd "$GOPATH/src/$2"
}

message "${MESSAGE_COLOR}Building cli${DEFAULT_COLOR}" &&
_go_build_path components/cli github.com/docker/cli &&
DISABLE_WARN_OUTSIDE_CONTAINER=1 make VERSION=$VERSION-ce dynbinary &&
popd > /dev/null

message "${MESSAGE_COLOR}Building daemon${DEFAULT_COLOR}"
_go_build_path components/engine github.com/docker/docker &&
DOCKER_GITCOMMIT=$_DOCKER_COMMIT DOCKER_BUILDTAGS="seccomp journald" VERSION=$VERSION-ce hack/make.sh dynbinary
popd > /dev/null

if in_depends $MODULE go-md2man; then
  message "${MESSAGE_COLOR}Generating man pages${DEFAULT_COLOR}" &&
  mkdir -p src/github.com/spf13 &&
  ln -rsfT cobra-master src/github.com/spf13/cobra &&
  _go_build_path components/cli github.com/docker/cli &&
  make manpages 2> /dev/null &&
  popd > /dev/null
fi &&

message "${MESSAGE_COLOR}Building runc${DEFAULT_COLOR}" &&
_go_build_path runc-$_RUNC_COMMIT github.com/opencontainers/runc &&
make BUILDTAGS="seccomp" &&
popd > /dev/null &&

message "${MESSAGE_COLOR}Building containerd${DEFAULT_COLOR}" &&
_go_build_path containerd-$_CONTAINERD_COMMIT github.com/containerd/containerd &&
make &&
popd > /dev/null &&

message "${MESSAGE_COLOR}Building docker-proxy${DEFAULT_COLOR}" &&
_go_build_path libnetwork-$_LIBNETWORK_COMMIT github.com/docker/libnetwork &&
go build -ldflags='-linkmode=external' github.com/docker/libnetwork/cmd/proxy
popd > /dev/null &&

message "${MESSAGE_COLOR}Building docker-init${DEFAULT_COLOR}" &&
_go_build_path tini-$_TINI_COMMIT github.com/krallin/tini &&
cmake . &&
make tini-static &&
popd > /dev/null &&

prepare_install &&

install -Dm755 runc-$_RUNC_COMMIT/runc /usr/bin/docker-runc &&
install -Dm755 containerd-$_CONTAINERD_COMMIT/bin/containerd /usr/bin/docker-containerd &&
install -Dm755 containerd-$_CONTAINERD_COMMIT/bin/containerd-shim /usr/bin/docker-containerd-shim &&
install -Dm755 containerd-$_CONTAINERD_COMMIT/bin/ctr /usr/bin/docker-containerd-ctr &&
install -Dm755 libnetwork-$_LIBNETWORK_COMMIT/proxy /usr/bin/docker-proxy &&
install -Dm755 tini-$_TINI_COMMIT/tini-static /usr/bin/docker-init &&

# Dockerd
cd $SOURCE_DIRECTORY/components/engine &&
install -Dm755 bundles/latest/dynbinary-daemon/dockerd /usr/bin/dockerd &&
# Systemd files
install -Dm644 contrib/init/systemd/docker.service /usr/lib/systemd/system/docker.service &&
install -Dm644 contrib/init/systemd/docker.socket /usr/lib/systemd/system/docker.socket &&
install -Dm644 contrib/udev/80-docker.rules /usr/lib/udev/rules.d/80-docker.rules &&
install -Dm644 $SCRIPT_DIRECTORY/docker.conf /usr/lib/sysusers.d/docker.conf &&

cd $SOURCE_DIRECTORY/components/cli &&
install -Dm755 build/docker /usr/bin/docker &&
install -Dm644 contrib/completion/bash/docker /usr/share/bash-completion/completions/docker &&

if in_depends $MODULE go-md2man; then
  cp -r man/man* /usr/share/man/
fi
