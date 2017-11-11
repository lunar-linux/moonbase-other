export LANG=en_US.UTF-8

if in_depends $MODULE Python-3; then
  python3 setup.py build &&
  prepare_install &&
  python3 setup.py install --root=/
fi &&

python setup.py build &&
prepare_install &&
python setup.py install --root=/
