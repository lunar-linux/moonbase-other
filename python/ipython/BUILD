export PYTHONDONTWRITEBYTECODE=1 &&

python -m build --wheel &&

prepare_install &&
python -m installer -d / dist/*.whl
