# Install binary to /usr/bin
sedit '7,13d' setup.py &&

python -m build --wheel &&

prepare_install &&
python -m installer --destdir=/ dist/*.whl
