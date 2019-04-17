cargo build --release --features 'pcre2' &&

prepare_install &&

install -Dm755 target/release/rg /usr/bin/ &&

if module_installed bash-completion; then
   install -Dm644 target/release/build/ripgrep-*/out/rg.bash \
                 /usr/share/bash-completion/completions/rg
fi &&

if module_installed zsh; then
   install -Dm644 complete/_rg /usr/share/zsh/site-functions/
fi &&

install -Dm644 target/release/build/ripgrep-*/out/rg.1 /usr/share/man/man1/
