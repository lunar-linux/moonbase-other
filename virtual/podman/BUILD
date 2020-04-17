export BUILDTAGS='seccomp varlink systemd'
export CGO_LDFLAGS=$LDFLAGS
export GOFLAGS="-trimpath -buildmode=pie"
export CFLAGS="$CFLAGS -Wl,-z,relro -Wl,-z,now"

default_make &&

if module_installed bash-completion; then
   install  -m 644 completions/bash/podman /usr/share/bash-completion/completions/
fi &&

if module_installed zsh; then
   install  -d -m 755 /usr/share/zsh/site-functions
   install  -m 644 completions/zsh/_podman /usr/share/zsh/site-functions/
fi
