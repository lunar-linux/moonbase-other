export export SETUPTOOLS_SCM_PRETEND_VERSION=$VERSION

python -m build --wheel &&

prepare_install &&
python -m installer --destdir=/ dist/*.whl
