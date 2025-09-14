source /etc/profile.d/qt6.rc &&

python -m build --wheel &&

prepare_install &&
python -m installer --destdir=/ dist/*.whl
