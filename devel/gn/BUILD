echo 0.$(git rev-list --count initial-commit..).$(git rev-parse --short=8 HEAD) &&

sed -i 's|//    / \\|//    /  |' src/gn/header_checker.h

./build/gen.py &&
ninja -C out gn &&

mkdir -p /usr/share/vim/vimfiles &&
prepare_install &&

install -D out/gn /usr/bin/gn &&
cp -r misc/vim/{autoload,ftdetect,ftplugin,syntax} /usr/share/vim/vimfiles/ &&
install -Dm644 -t /usr/share/emacs/site-lisp misc/emacs/gn-mode.el
