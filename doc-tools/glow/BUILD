. /etc/profile.d/go.rc &&

go build \
    -trimpath \
    -buildmode=pie \
    -mod=readonly \
    -modcacherw \
    -ldflags "-X main.Version=${VERSION} -linkmode external -extldflags \"${LDFLAGS}\"" \
    -o "$MODULE" . &&

./$MODULE man > ${MODULE}.1 &&

if module_installed bash-completion ]; then
    ./$MODULE completion bash > glow.sh
fi &&

if module_installed fish ]; then
    ./$MODULE completion fish > glow.fish
fi &&

if module_installed zsh ]; then
    ./$MODULE completion zsh > glow.zsh
fi &&

prepare_install &&

install -Dm755 "$MODULE" /usr/bin/ &&
install -Dm644 "${MODULE}.1" /usr/share/man/man1/ &&

if [ -e glow.sh ]; then
    install -Dm644 glow.sh /usr/share/bash-completion/completions/glow
fi &&

if [ -e glow.fish ]; then
    install -Dm644 glow.fish /usr/share/fish/completions/
fi &&

if [ -e glow.zsh ]; then
    install -Dm644 glow.zsh /usr/share/zsh/site-functions/_glow
fi
