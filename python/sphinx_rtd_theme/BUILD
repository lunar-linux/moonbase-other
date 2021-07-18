#As noted by gentoo;
# CI=1 disables rebuilding webpack that requires npm use
# yes, that surely makes sense
export CI=1 &&

python setup.py build &&

prepare_install &&

python setup.py install --root=/ --optimize=1 --skip-build
