python setup.py build &&

pushd pycparser &&
python _build_tables.py &&
popd &&

prepare_install &&

python setup.py install --optimize=1
