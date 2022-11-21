export LANG=en_US.UTF-8
python -m build --wheel --skip-dependency-check --no-isolation &&

prepare_install &&
python -m installer --destdir=/ dist/*.whl &&
ln -sf /usr/bin/rst2html.py /usr/bin/rst2html
