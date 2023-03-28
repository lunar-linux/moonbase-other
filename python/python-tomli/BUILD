export PYTHONDONTWRITEBYTECODE=1 &&

python -m build -wn --skip-dependency-check &&

prepare_install &&
python -m installer -d / dist/*.whl
