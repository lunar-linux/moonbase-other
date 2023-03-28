export PYTHONDONTWRITEBYTECODE=1 &&

python3 -m build --wheel --skip-dependency-check --no-isolation &&

prepare_install &&
python3 -m installer --destdir=/ dist/*.whl
