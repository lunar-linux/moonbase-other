cargo build --release --features 'pcre2' &&

prepare_install &&

install -Dm755 target/release/rg /usr/bin/ &&

if module_installed bash-completion; then
   mkdir -p "/usr/share/bash-completion/completions"
   rg --generate=complete-bash > "/usr/share/bash-completion/completions/rg"
fi &&

if module_installed zsh; then
   mkdir -p "/usr/share/zsh/site-functions"
   rg --generate=complete-zsh > "/usr/share/zsh/site-functions/_rg"
fi &&

if module_installed fish; then
   mkdir -p "/usr/share/fish/vendor_completions.d"
   rg --generate=complete-fish > "/usr/share/fish/vendor_completions.d/rg.fish"
fi &&

mkdir -p "/usr/share/man/man1"
rg --generate=man >  "/usr/share/man/man1/rg.1"
