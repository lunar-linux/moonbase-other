cargo build --release &&

prepare_install &&

install -Dm755 "target/release/$MODULE" /usr/bin/ &&
install -Dm644 "doc/watchexec.1" "/usr/share/man/man1/" &&

if module_installed bash-completion; then
   install -Dm644 completions/bash "/usr/share/bash-completion/completions/watchexec"
fi &&

if module_installed fish; then
   install -Dm644 completions/fish "/usr/share/fish/completions/watchexec.fish"
fi &&

if module_installed zsh; then
   install -Dm644 completions/zsh "/usr/share/zsh/site-functions/_watchexec"
fi
