export PYTHONDONTWRITEBYTECODE=1 &&

pip3 wheel -w dist $PWD &&

prepare_install &&
pip3 install --find-links=dist packaging
