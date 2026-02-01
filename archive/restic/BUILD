export CGO_LDFLAGS="${LDFLAGS}"
export CGO_CFLAGS="${CFLAGS}"
export CGO_CPPFLAGS="${CPPFLAGS}"
export CGO_CXXFLAGS="${CXXFLAGS}"

# Build
go run build.go --enable-pie &&

# Generate man pages (optional)
if [ "$(get_module_config MANPAGES)" = "y" ]; then
  mkdir -p man &&
  ./restic generate --man man/
fi &&

# Generate shell completions
mkdir -p completions &&
./restic generate --bash-completion completions/restic.bash &&
./restic generate --zsh-completion completions/_restic &&
./restic generate --fish-completion completions/restic.fish &&

prepare_install &&

# Install binary
install -Dm755 restic /usr/bin/restic &&

# Install man pages
if [ "$(get_module_config MANPAGES)" = "y" ]; then
  for f in man/*.1; do
    install -Dm644 "$f" "/usr/share/man/man1/$(basename $f)"
  done
fi &&

# Install shell completions
if module_installed bash-completion; then
  install -Dm644 completions/restic.bash /usr/share/bash-completion/completions/restic
fi &&

if module_installed zsh; then
  install -Dm644 completions/_restic /usr/share/zsh/site-functions/_restic
fi &&

if module_installed fish; then
  install -Dm644 completions/restic.fish /usr/share/fish/vendor_completions.d/restic.fish
fi
