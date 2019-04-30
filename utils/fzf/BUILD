sedit 's/^REVISION.*/REVISION := ""/' Makefile &&
bad_flags "-z now" "-z relro" &&

make install &&
prepare_install &&
install -Dm755 bin/fzf -t /usr/bin &&
install -Dm644 man/man1/fzf.1 -t /usr/share/man/man1 &&

if in_depends $MODULE tmux; then
  install -Dm755 bin/fzf-tmux -t /usr/bin &&
  install -Dm644 man/man1/fzf-tmux.1 /usr/share/man/man1
fi &&

if in_depends $MODULE bash-completion; then
  install -Dm644 shell/completion.bash /usr/share/bash-completion/completions/fzf
fi &&

install -Dm644 shell/key-bindings.bash /etc/profile.d/fzf.rc
