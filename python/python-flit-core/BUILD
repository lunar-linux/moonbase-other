python build_dists.py &&

PYTHONPATH=flit_core python -m flit build --format wheel

prepare_install &&
PIP_CONFIG_FILE=/dev/null pip install --isolated --root=/ --ignore-installed --no-deps dist/*.whl
