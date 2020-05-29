default_config &&
default_make &&

pushd python &&
python setup.py install --root=/ --cpp_implementation &&
popd &&

install -Dm644 editors/protobuf-mode.el /usr/share/emacs/site-lisp/ &&

if module_installed vim; then
   install -vDm 644 editors/proto.vim -t "/usr/share/vim/vimfiles/syntax"
fi
