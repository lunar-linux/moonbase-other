export PYTHONDONTWRITEBYTECODE=1 &&

python -m build -nw &&

prepare_install &&

python -m installer --destdir=/ dist/*.whl
