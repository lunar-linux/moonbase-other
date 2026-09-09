export LC_ALL=en_US.UTF-8 &&

export PYTHONDONTWRITEBYTECODE=1 &&

python -m build --wheel &&

prepare_install &&
python -m installer --destdir=/ dist/*.whl
