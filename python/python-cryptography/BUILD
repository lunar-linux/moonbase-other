python -m build --wheel --skip-dependency-check --no-isolation &&
#pip3 wheel -w dist --no-build-isolation --no-deps $PWD &&

prepare_install &&
python -m installer -d / dist/*.whl
#pip3 install  --no-index --find-links=dist cryptography
