default_make &&

make PREFIX=/usr install-desktop &&

if module_installed bash-completion; then
   install -Dm644 misc/auto-completion/bash/nnn-completion.bash /usr/share/bash-completion/completions/nnn
fi &&

if module_installed zsh; then
   install -Dm644 misc/auto-completion/zsh/_nnn /usr/share/zsh/site-functions/
fi
