export SETUPTOOLS_SCM_PRETEND_VERSION=$VERSION &&
python -m build -wn &&

prepare_install &&
export SETUPTOOLS_SCM_PRETEND_VERSION=$VERSION &&
python -m installer -d / dist/*.whl
