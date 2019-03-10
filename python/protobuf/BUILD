default_build &&

if in_depends $MODULE python-setuptools; then
  pushd python &&
  python3 setup.py install --root=/ &&
  popd
fi &&

if in_depends $MODULE python2-setuptools; then
  pushd python &&
  python2 setup.py install --root=/ &&
  popd
fi &&

install -Dm644 editors/protobuf-mode.el /usr/share/emacs/site-lisp/protobuf-mode.el
