OPTS+=" O_ICONS=1"

make $OPTS && 
prepare_install &&
make PREFIX=/usr install install-desktop &&

if module_installed bash-completion; then
   install -Dm644 misc/auto-completion/bash/nnn-completion.bash /usr/share/bash-completion/completions/nnn
fi &&

if module_installed zsh; then
   install -Dm644 misc/auto-completion/zsh/_nnn /usr/share/zsh/site-functions/
fi &&

if module_installed fish; then
   install -Dm644 misc/auto-completion/fish/nnn.fish /usr/share/fish/vendor_completions.d/
fi &&

install -Dm644 -t /usr/share/nnn/quitcd/ misc/quitcd/* &&

cp -a plugins /usr/share/nnn/plugins/
