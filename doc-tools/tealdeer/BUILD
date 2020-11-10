_binname=tldr

env ARGO_INCREMENTAL=0 CARGO_TARGET_DIR=target cargo build --release --locked &&

prepare_install &&

# Install binary
install -Dm 755 target/release/${_binname} -t /usr/bin/ &&

# Install shell completions

if module_installed bash-completion; then
   install -D -o root -g root -m 644 bash_tealdeer "/usr/share/bash-completion/completions/${_binname}"
fi &&

if module_installed fish; then
   install -D -o root -g root -m 644 fish_tealdeer "/usr/share/fish/completions/${_binname}.fish"
fi &&

if module_installed zsh; then
   install -D -o root -g root -m 644 zsh_tealdeer "/usr/share/zsh/site-functions/_${_binname}"
fi
