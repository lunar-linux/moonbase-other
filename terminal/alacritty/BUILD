env CARGO_INCREMENTAL=0 cargo build --release --locked &&

prepare_install &&

desktop-file-install -m 644 --dir /usr/share/applications/ extra/linux/alacritty.desktop &&

install -D -m755 target/release/alacritty /usr/bin/ &&
install -D -m644 extra/alacritty.man /usr/share/man/man1/alacritty.1 &&
install -D -m644 extra/completions/alacritty.bash /usr/share/bash-completion/completions/alacritty &&
#install -D -m644 extra/completions/_alacritty /usr/share/zsh/site-functions/ &&
install -D -m644 extra/logo/alacritty-term.svg /usr/share/pixmaps/Alacritty.svg &&

# alacritty terminfo
install -dm 755 /usr/share/terminfo/a/ &&
tic -o /usr/share/terminfo -xe alacritty,alacritty-direct extra/alacritty.info
