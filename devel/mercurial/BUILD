prepare_install &&

python setup.py install --force --optimize=1 &&

cp -p contrib/hgk /usr/bin &&
gather_docs CONTRIBUTORS PKG-INFO hgweb*.cgi doc/*.html doc/*.txt &&

install -m 644 doc/*.1 /usr/share/man/man1/ &&
install -m 644 doc/*.5 /usr/share/man/man5/ &&

if module_installed vim; then
   install -Dm644 contrib/vim/HGAnnotate.vim /usr/share/vim/vimfiles/syntax/HGAnnotate.vim
fi &&

if module_installed bash-completion ; then
   install -m644 -D contrib/bash_completion /usr/share/bash-completion/completions/hg
fi &&

if module_installed zsh; then
   install -m644 -D contrib/zsh_completion /usr/share/zsh/site-functions/_hg
fi
