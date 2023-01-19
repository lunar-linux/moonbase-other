export PYTHONDONTWRITEBYTECODE=1 &&

make &&
prepare_install &&

python setup.py linux-package --prefix=/usr --update-check-interval=0 &&

# completions
python __main__.py + complete setup bash | \
      install -Dm644 /dev/stdin /usr/share/bash-completion/completions/kitty &&

if module_installed fish ; then
   python __main__.py + complete setup fish | \
      install -Dm644 /dev/stdin /usr/share/fish/vendor_completions.d/kitty.fish
fi &&

install -Dm644 /usr/share/icons/hicolor/256x256/apps/kitty.png /usr/share/pixmaps/kitty.png
