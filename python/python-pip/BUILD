rm -rf /usr/bin/pip \
       /usr/bin/pip3 \
       /usr/bin/pip3.11 \
       /usr/lib/python3.11/site-packages/pip/* \
       /usr/lib/python3.11/site-packages/pip-23.3.1.dist-info &&

python -m build --wheel --no-isolation &&

prepare_install &&
python -m installer --destdir=/ dist/*.whl
