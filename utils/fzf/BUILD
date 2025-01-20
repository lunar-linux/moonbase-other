bad_flags "-z now" "-z relro" &&
export GOPROXY=https://proxy.golang.org
export GOFLAGS="-buildmode=pie -trimpath -mod=readonly -modcacherw -ldflags=-linkmode=external"
export CGO_LDFLAGS="${LDFLAGS}"
export CGO_CFLAGS="${CFLAGS}"
export CGO_CPPFLAGS="${CPPFLAGS}"
export CGO_CXXFLAGS="${CXXFLAGS}"
export FZF_VERSION="$VERSION"


make install &&
prepare_install &&
install -Dm755 bin/fzf -t /usr/bin/ &&
install -Dm644 man/man1/fzf.1 -t /usr/share/man/man1/ &&

if module_installed tmux; then
  install -Dm755 bin/fzf-tmux -t /usr/bin &&
  install -Dm644 man/man1/fzf-tmux.1 /usr/share/man/man1/
fi &&

if module_installed bash-completion; then
  install -Dm644 shell/completion.bash /usr/share/bash-completion/completions/fzf
fi &&

if module_installed fish; then
   install -Dm644 shell/key-bindings.fish /usr/share/fish/vendor_functions.d/fzf_key_bindings.fish
fi &&

if module_installed zsh; then
  install -Dm644 shell/completion.zsh /usr/share/zsh/site-functions/_fzf
fi &&

if module_installed vim; then
  mkdir -p /usr/share/vim/vimfiles/plugin/ &&
  install -Dm644 plugin/fzf.vim /usr/share/vim/vimfiles/plugin/ &&
  install -Dm644 doc/fzf.txt /usr/share/vim/vimfiles/doc/fzf.txt
fi &&

install -Dm644 shell/key-bindings.bash /etc/profile.d/fzf.rc
