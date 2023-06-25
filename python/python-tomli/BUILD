export PYTHONDONTWRITEBYTECODE=1 &&

python -m build --wheel --skip-dependency-check &&

prepare_install &&
python -m installer -d / dist/*.whl
