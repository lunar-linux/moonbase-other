prepare_install &&

python setup.py install --root="/" --optimize=1 &&

mv "/usr/share/bash-completion/completions/youtube-dl.bash-completion" \
   "/usr/share/bash-completion/completions/youtube-dl" &&

if module_installed zsh; then
  install -Dm644 youtube-dl.zsh /usr/share/zsh/site-functions/_youtube-dl
fi
