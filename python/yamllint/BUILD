sed -i '/setuptools/d' setup.cfg &&
python -m build --wheel --skip-dependency-check --no-isolation &&

prepare_install &&
python -m installer --destdir=/ dist/*.whl
