export PYTHONDONTWRITEBYTECODE=1 &&

python -m build --wheel --no-isolation backend &&

prepare_install &&

python -m installer --destdir=/ backend/dist/*.whl
