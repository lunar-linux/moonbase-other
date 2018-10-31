OPTS+=" --install-data=usr --install-scripts=usr/bin --optimize=1"

default_python3_build &&

install -dm755 /etc/fonts/conf.d &&
install -dm755 /etc/fonts/conf.avail &&
install -Dm644 font/PowerlineSymbols.otf /usr/share/fonts/OTF/PowerlineSymbols.otf &&
install -Dm644 font/10-powerline-symbols.conf /etc/fonts/conf.avail/10-powerline-symbols.conf &&
ln -sf ../conf.avail/10-powerline-symbols.conf /etc/fonts/conf.d/10-powerline-symbols.conf &&

# Bindings
install -Dm644 powerline/bindings/vim/plugin/powerline.vim /usr/share/vim/vimfiles/plugin/powerline.vim &&
install -Dm644 powerline/bindings/zsh/powerline.zsh /usr/share/zsh/contrib/powerline.zsh &&
install -Dm644 powerline/bindings/tmux/powerline.conf /usr/share/tmux/powerline.conf &&
install -Dm644 powerline/bindings/bash/powerline.sh /usr/share/bash/powerline.sh
