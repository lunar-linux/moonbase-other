rm -rf /usr/bin/pip \
       /usr/bin/pip3 \
       /usr/bin/pip3.12 \
       /usr/lib/python3.12/site-packages/pip/* \
       /usr/lib/python3.12/site-packages/pip-24.0.dist-info &&

python -m build --wheel --no-isolation &&

prepare_install &&
python -m installer --destdir=/ dist/*.whl
