cargo build --release --locked &&

prepare_install &&

install -Dm755 target/release/$MODULE /usr/bin/$MODULE &&
ln -sf $MODULE /usr/bin/z &&

# Install shell completions
if module_installed bash-completion; then
  install -Dm644 contrib/completions/$MODULE.bash \
    "/usr/share/bash-completion/completions/$MODULE"
fi &&

if module_installed zsh; then
  install -Dm644 contrib/completions/_$MODULE \
    "/usr/share/zsh/site-functions/_$MODULE"
fi &&

if module_installed fish; then
  install -Dm644 contrib/completions/$MODULE.fish \
    "/usr/share/fish/vendor_completions.d/$MODULE.fish"
fi &&

# Install man pages
install -dm755 /usr/share/man/man1 &&
install -m644 man/man1/*.1 /usr/share/man/man1/
