export PYTHONDONTWRITEBYTECODE=1
python -m build --wheel --no-isolation &&

prepare_install &&
python -m installer --destdir=/ dist/*.whl
