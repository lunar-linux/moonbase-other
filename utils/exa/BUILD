cargo build --release --locked &&

prepare_install &&

cargo install --path . --root /usr &&
rm -f /usr/.crates* &&

install -Dm644 "$SCRIPT_DIRECTORY/exa.1" /usr/share/man/man1/ &&
install -Dm644 "$SCRIPT_DIRECTORY/exa_colors.5" /usr/share/man/man5/ &&

if module_installed bash-completion; then
  install -Dm644 completions/completions.bash "/usr/share/bash-completion/completions/$MODULE"
fi

if module_installed zsh; then
  install -Dm644 completions/completions.zsh "/usr/share/zsh/site-functions/_$MODULE"
fi

if module_installed fish; then
  install -Dm644 completions/completions.fish "/usr/share/fish/vendor_completions.d/$MODULE.fish"
fi
