export BUILDTAGS='seccomp varlink systemd'
export CFLAGS="$CFLAGS -Wl,-z,relro -Wl,-z,now"
export CGO_LDFLAGS="$LDFLAGS"
export CGO_CFLAGS="$CFLAGS"
export GOFLAGS="-buildmode=pie -trimpath"

make EXTRA_LDFLAGS='-s -w -linkmode=external' &&
prepare_install &&
make install install.completions &&

if ! module_installed docker; then
   make docker-docs &&
   make -j1 install.docker-full
fi &&

if module_installed bash-completion; then
   install  -m 644 completions/bash/podman /usr/share/bash-completion/completions/
fi &&

if module_installed zsh; then
   install  -d -m 755 /usr/share/zsh/site-functions
   install  -m 644 completions/zsh/_podman /usr/share/zsh/site-functions/
fi
