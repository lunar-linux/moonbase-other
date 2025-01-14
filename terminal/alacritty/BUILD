env CARGO_INCREMENTAL=0 cargo build --release --locked &&

prepare_install &&

desktop-file-install -m 644 --dir /usr/share/applications/ extra/linux/Alacritty.desktop &&

install -D -m755 target/release/alacritty /usr/bin/ &&

if in_depends $MODULE scdoc ; then
   cd extra/man
   for f in *.1.scd; do
       scdoc < $f > ${f//.scd}
       install -D -m644 ${f//.scd} /usr/share/man/man1/
   done
   for f in *.5.scd; do
       scdoc < $f > ${f//.scd}
       install -D -m644 ${f//.scd} /usr/share/man/man5/
   done
   cd ../..
fi &&

if module_installed bash-completion ; then
   install -D -m644 extra/completions/alacritty.bash \
		    /usr/share/bash-completion/completions/alacritty
fi &&

if module_installed fish ; then
   install -D -m644 extra/completions/alacritty.fish \
		    /usr/share/fish/vendor_completions.d/alacritty
fi &&

if module_installed zsh ; then
   install -D -m644 extra/completions/_alacritty \
		    /usr/share/zsh/site-functions/
fi &&

mkdir -p /usr/share/appdata &&
install -D -m644 extra/linux/org.alacritty.Alacritty.appdata.xml /usr/share/appdata/ &&
mkdir -p /usr/share/pixmaps &&
install -D -m644 extra/logo/alacritty-term.svg /usr/share/pixmaps/Alacritty.svg &&

# alacritty terminfo
install -dm 755 /usr/share/terminfo/a/ &&
tic -o /usr/share/terminfo -xe alacritty,alacritty-direct extra/alacritty.info
