cd hypothesis/rust &&
cargo fetch --locked --target host-tuple &&
cd ../ &&

python -m build --wheel &&

prepare_install &&
python -m installer --destdir=/ dist/*.whl
