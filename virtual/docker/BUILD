export GOPATH="$SOURCE_DIRECTORY"
export PATH="$SOURCE_DIRECTORY/bin:$PATH"
export CFLAGS="$CFLAGS -Wl,-z,relro -Wl,-z,now"
export CGO_CPPFLAGS="${CPPFLAGS}"
export CGO_CFLAGS="${CFLAGS}"
export CGO_CXXFLAGS="${CXXFLAGS}"
export CGO_LDFLAGS="${LDFLAGS}"
export LDFLAGS=''
export GOFLAGS='-buildmode=pie -trimpath -mod=readonly -modcacherw -ldflags=-linkmode=external'
export GO111MODULE=off

_go_build_path() {
  mkdir -p "$GOPATH/src/${2%/*}"
  rm -f "$GOPATH/src/$2"
  ln -rsT "$1" "$GOPATH/src/$2"
  pushd "$GOPATH/src/$2"
}

_go_popd() {
  popd > /dev/null
}

message "${MESSAGE_COLOR}Building cli${DEFAULT_COLOR}" &&
_go_build_path cli-$VERSION github.com/docker/cli &&
DISABLE_WARN_OUTSIDE_CONTAINER=1 make VERSION=$VERSION dynbinary &&
if in_depends $MODULE go-md2man; then
  DISABLE_WARN_OUTSIDE_CONTAINER=1 make manpages
fi &&
_go_popd &&

message "${MESSAGE_COLOR}Building daemon${DEFAULT_COLOR}"
_go_build_path moby-$VERSION github.com/docker/docker &&
DOCKER_GITCOMMIT=$(cd $SOURCE_DIRECTORY/moby-$VERSION && git rev-parse --short HEAD) \
  DOCKER_BUILDTAGS="seccomp journald apparmor" \
  VERSION=$VERSION \
  hack/make.sh dynbinary &&
_go_popd &&

message "${MESSAGE_COLOR}Building docker-proxy${DEFAULT_COLOR}" &&
_go_build_path libnetwork-$_LIBNETWORK_COMMIT github.com/docker/libnetwork &&
go build github.com/docker/libnetwork/cmd/proxy
_go_popd &&

message "${MESSAGE_COLOR}Building docker-init${DEFAULT_COLOR}" &&
_go_build_path tini-$_TINI_COMMIT github.com/krallin/tini &&
cmake -DCMAKE_POLICY_VERSION_MINIMUM=3.5 . &&
make tini-static &&
_go_popd &&

message "${MESSAGE_COLOR}Building app cli plugin${DEFAULT_COLOR}" &&
_go_build_path app-$_APP_COMMIT github.com/docker/app &&
make dynamic &&
_go_popd &&

message "${MESSAGE_COLOR}Building buildx cli plugin${DEFAULT_COLOR}"
_go_build_path buildx-$_BUILDX_COMMIT github.com/docker/buildx &&
go build -o docker-buildx -ldflags "\PRE
  -X github.com/docker/buildx/version.Version=$(git describe --match 'v[0-9]*' --always --tags)-tp-docker \
  -X github.com/docker/buildx/version.Revision=$(git rev-parse HEAD) \
  -X github.com/docker/buildx/version.Package=github.com/docker/buildx \
  -X main.experimental=1 -linkmode=external" ./cmd/buildx &&
_go_popd &&

prepare_install &&

install -Dm755 libnetwork-$_LIBNETWORK_COMMIT/proxy /usr/bin/docker-proxy &&
install -Dm755 tini-$_TINI_COMMIT/tini-static /usr/bin/docker-init &&
install -Dm755 moby-$VERSION/bundles/dynbinary-daemon/dockerd /usr/bin/dockerd &&
install -Dm755 cli-$VERSION/build/docker /usr/bin/docker &&


# Systemd files
install -Dm644 moby-$VERSION/contrib/init/systemd/docker.service /usr/lib/systemd/system/docker.service &&
install -Dm644 moby-$VERSION/contrib/init/systemd/docker.socket /usr/lib/systemd/system/docker.socket &&
install -Dm644 moby-$VERSION/contrib/udev/80-docker.rules /usr/lib/udev/rules.d/80-docker.rules &&
install -Dm644 $SCRIPT_DIRECTORY/docker.conf /usr/lib/sysusers.d/docker.conf &&
install -Dm644 cli-$VERSION/contrib/completion/bash/docker /usr/share/bash-completion/completions/docker &&

if in_depends $MODULE go-md2man; then
  install -dm755  /usr/share/man &&
  cp -r cli-$VERSION/man/man* /usr/share/man/
fi &&

# cli plugins
cd $SOURCE_DIRECTORY/src/github.com/docker &&
install -Dm755 app/bin/docker-app /usr/lib/docker/cli-plugins/docker-app &&
install -Dm755 buildx/docker-buildx /usr/lib/docker/cli-plugins/docker-buildx
