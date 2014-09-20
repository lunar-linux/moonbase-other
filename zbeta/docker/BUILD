export AUTO_GOPATH=1
export DOCKER_GITCOMMIT
./hack/make.sh dynbinary &&
prepare_install &&
install -Dm0755 bundles/${VERSION}/dynbinary/docker-${VERSION} /usr/bin/docker &&
install -Dm0755 bundles/${VERSION}/dynbinary/dockerinit-${VERSION} /usr/lib/docker/dockerinit &&
install -Dm0644 contrib/completion/bash/docker /usr/share/bash-completion/completions/docker
