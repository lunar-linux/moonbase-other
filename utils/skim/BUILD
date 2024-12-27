prepare_install &&

cargo build --release --locked &&

install -Dt /usr/bin target/release/sk bin/sk-tmux &&
install -Dm644 -t /usr/share/man/man1 man/man1/* &&

install -Dm644 -t /usr/share/skim shell/*.bash shell/*.zsh &&

if module_installed bash-completion; then
   install -Dm644 shell/completion.bash "$pkgdir/usr/share/bash-completion/completions/sk"
fi &&

if module_installed zsh; then
   install -Dm644 shell/completion.zsh "$pkgdir/usr/share/zsh/site-functions/_sk"
fi &&

if module_installed fish; then
   install -Dm644 shell/key-bindings.fish /usr/share/fish/functions/skim_key_bindings.fish
fi &&

if module_installed vim; then
   install -Dm644 -t /usr/share/vim/vimfiles/plugin plugin/skim.vim
fi
