env CARGO_INCREMENTAL=0 cargo build --release --locked &&

prepare_install &&

desktop-file-install -m 644 --dir /usr/share/applications/ extra/linux/Alacritty.desktop &&

install -D -m755 target/release/alacritty /usr/bin/ &&
install -D -m644 extra/alacritty.man /usr/share/man/man1/alacritty.1 &&

if module_installed bash-completion ; then
   install -D -m644 extra/completions/alacritty.bash \
		    /usr/share/bash-completion/completions/alacritty
fi &&

if module_installed fish ; then
   install -D -m644 extra/completions/alacritty.fish \
		    /usr/share/fish/vendor_completions.d/alacritty
fi &&

mkdir -p /usr/share/appdata &&
mkdir -p /usr/share/doc/alacritty/example &&
install -D -m644 extra/linux/io.alacritty.Alacritty.appdata.xml /usr/share/appdata/ &&
install -D -m644 alacritty.yml /usr/share/doc/alacritty/example/ &&
install -D -m644 extra/logo/alacritty-term.svg /usr/share/pixmaps/Alacritty.svg &&

# alacritty terminfo
install -dm 755 /usr/share/terminfo/a/ &&
tic -o /usr/share/terminfo -xe alacritty,alacritty-direct extra/alacritty.info
