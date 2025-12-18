prepare_install &&

cargo build --release --locked &&

just --man > "./${MODULE}.1" &&
install -Dm644 -t "/usr/share/man/man1/" "${MODULE}.1" &&
install -Dm644 "completions/${MODULE}.bash" "/usr/share/bash-completion/completions/${MODULE}" &&

if module_installed zsh ; then
  install -Dm644 "completions/${MODULE}.zsh" "/usr/share/zsh/site-functions/_${MODULE}"
fi &&

if module_installed fish ; then
  install -Dm644 -t "/usr/share/fish/vendor_completions.d/" "completions/${MODULE}.fish"
fi
