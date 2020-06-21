cargo build --release --locked &&

prepare_install &&

install -Dm755 "target/release/$MODULE" /usr/bin/ &&

if module_installed zsh; then
   install -Dm644 completions/zsh "/usr/share/zsh/site-functions/_watchexec"
fi
