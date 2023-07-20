export PYTHONDONTWRITEBYTECODE=1 &&
pip3 wheel -w dist --no-build-isolation --no-deps $PWD &&

prepare_install &&
pip3 install --no-index --no-user --find-links dist tomli
