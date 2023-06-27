python -m build --wheel --skip-dependency-check --no-isolation &&

prepare_install &&

PYTHONPATH=src python -m installer -d / dist/*.whl
