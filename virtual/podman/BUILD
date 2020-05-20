export BUILDTAGS='seccomp varlink systemd'
export CFLAGS="$CFLAGS -Wl,-z,relro -Wl,-z,now"
export CGO_LDFLAGS="$LDFLAGS"
export CGO_CFLAGS="$CFLAGS"
export GOFLAGS="-buildmode=pie -trimpath"

default_make &&

if ! module_installed docker; then
   install docker /usr/bin/
fi &&

if module_installed bash-completion; then
   install  -m 644 completions/bash/podman /usr/share/bash-completion/completions/
fi &&

if module_installed zsh; then
   install  -d -m 755 /usr/share/zsh/site-functions
   install  -m 644 completions/zsh/_podman /usr/share/zsh/site-functions/
fi
