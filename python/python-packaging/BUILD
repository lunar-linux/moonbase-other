python -m build &&

prepare_install &&
rm src/packaging/__init__.py &&
python -m installer --no-compile-bytecode --destdir=/ dist/*.whl
