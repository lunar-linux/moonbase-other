sed -i 's/setuptools~/setuptools>/g' pyproject.toml &&
sed -i 's/wheel~/wheel>/g' pyproject.toml &&

python -m build --wheel &&

prepare_install &&

python -m installer --destdir=/ dist/*.whl
