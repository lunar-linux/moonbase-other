export GOPROXY=https://proxy.golang.org

go mod vendor &&
version=r$pkgver ./gen/build.sh -mod=vendor -trimpath &&
go clean -modcache &&

prepare_install &&

install -Dm755 lf /usr/bin/ &&
install -Dm644 lf.1 /usr/share/man/man1/ &&

mkdir -p /usr/share/{applications,doc/$MODULE} &&
install -Dm644 README.md etc/lfrc.example /usr/share/doc/$MODULE/ &&
install -Dm644 -t /usr/share/applications/ ./lf.desktop &&

# vim
if module_installed vim; then
  mkdir -p /usr/share/vim/vimfiles/{syntax,ftdetect} &&
  install -Dm644 etc/lf.vim /usr/share/vim/vimfiles/syntax/ &&
  install -Dm644 etc/lf.vim /usr/share/vim/vimfiles/ftdetect/
fi &&

# bash
if module_installed bash-completion; then
  install -Dm644 etc/lf.bash /usr/share/bash-completion/completions/lf
fi &&

# fish
if module_installed fish; then
   install -Dm644 -t /usr/share/fish/vendor_completions.d/ ./etc/lf.fish
   install -Dm644 -t /usr/share/fish/vendor_functions.d/ ./etc/lfcd.fish
fi &&

# zsh
if module_installed zsh; then
   install -Dm644 -t /usr/share/zsh/site-functions/_lf/ ./etc/lf.zsh
fi
