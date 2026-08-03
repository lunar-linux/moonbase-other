export PYTHONDONTWRITEBYTECODE=1 &&
python -m build --wheel &&

prepare_install &&
python -m installer --no-compile-bytecode --destdir=/ dist/*.whl
