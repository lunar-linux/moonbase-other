export GOFLAGS="-buildmode=pie -trimpath -ldflags=-linkmode=external -mod=readonly -modcacherw" &&
export GOPROXY=https://proxy.golang.org,direct &&

go build -v "./cmd/$MODULE" &&

# Clean mod cache for makepkg -C
go clean -modcache &&

prepare_install &&

install -Dm755 "$MODULE" -t /usr/bin &&
install -Dm644 "$SCRIPT_DIRECTORY/conf.yml" -t "/etc/$MODULE" &&

if module_installed bash-completion; then
  install -Dm755 "scripts/$MODULE.bash" "/usr/share/bash-completion/completions/$MODULE"
fi &&

if module_installed fish; then
  install -Dm755 "scripts/$MODULE.fish" -t /usr/share/fish/completions
fi &&

if module_installed zsh; then
  # Conflicts with zsh-suggestions, copy or symlink from the doc folder
  install -Dm755 "scripts/$MODULE.zsh" "/usr/share/zsh/site-functions/_$MODULE" &&
  install -Dm755 "scripts/$MODULE.zsh" "/usr/share/doc/$pkgname/_$MODULE"
fi

install -dm755 "/usr/share/$MODULE/cheatsheets/community" &&
find "cheatsheets" \
        -maxdepth 1 \
        -type f \
        -perm 644 \
        -exec \
            install -m644 "{}" \
              "/usr/share/$MODULE/cheatsheets/community/" \; &&

install -Dm644 doc/cheat.1 /usr/share/man/man1
