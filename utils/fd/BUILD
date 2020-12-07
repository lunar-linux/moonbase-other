cargo build --release --locked &&

prepare_install &&

install -Dm755 target/release/fd /usr/bin/fd &&
install -Dm644 doc/fd.1 /usr/share/man/man1/fd.1 &&

if module_installed bash-completion; then
  install -Dm644 target/release/build/fd-find-*/out/fd.bash /usr/share/bash-completion/completions/fd
fi &&

if module_installed zsh; then
  install -Dm644 contrib/completion/_fd /usr/share/zsh/site-functions/
fi &&

if module_installed fish; then
  install -Dm644 target/release/build/fd-find-*/out/fd.fish /usr/share/fish/vendor_completions.d/
fi
