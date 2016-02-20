export AUTO_GOPATH=1
export DOCKER_GITCOMMIT

add_priv_group docker &&

#if [[ $(arch) == i686 ]]; then
#  mv vendor/src/github.com/opencontainers/runc/libcontainer/seccomp/{jump_amd64.go,jump_linux.go} &&
#  sedit 's/,amd64//' vendor/src/github.com/opencontainers/runc/libcontainer/seccomp/jump_linux.go
#fi &&

./hack/make.sh dynbinary &&

prepare_install &&

install -Dm0755 bundles/$VERSION/dynbinary/docker-$VERSION /usr/bin/docker &&
install -Dm0755 bundles/$VERSION/dynbinary/dockerinit-$VERSION /usr/lib/docker/dockerinit &&
install -Dm0644 contrib/completion/bash/docker /usr/share/bash-completion/completions/docker
install -Dm0644 $SCRIPT_DIRECTORY/$MODULE.conf /usr/lib/sysusers.d/ &&

if module_installed go-md2man; then
  # man pages generation and install
  man/md2man-all.sh &&
  install -dm755 /usr/share/man
  mv man/man* /usr/share/man
fi
