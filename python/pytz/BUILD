export LC_ALL=en_US.UTF-8 &&

python3 setup.py build &&
prepare_install &&
python3 setup.py install --root=/

if in_depends $MODULE Python ; then
  python2 setup.py build &&
  prepare_install &&
  python2 setup.py install --root=/
fi
